package es.fdi.iw.controller;


import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import es.fdi.iw.ContextInitializer;
import es.fdi.iw.model.Actividad;
import es.fdi.iw.model.Mensaje;
import es.fdi.iw.model.Tag;
import es.fdi.iw.model.Usuario;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@PersistenceContext
	private EntityManager entityManager;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
		
	@RequestMapping(value = "/registro", method = RequestMethod.POST)
	@Transactional
	public String registro(
			@RequestParam("login") String formLogin,
			@RequestParam("pass") String formPass,
			@RequestParam("pass2") String formPass2,
			@RequestParam("email") String formEmail,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {
		
		logger.info("Login attempt from '{}' while visiting '{}'", formLogin);
		
		// validate request
		if (formLogin == null || formLogin.length() < 3 || formPass == null || formPass.length() < 4) 
		{
			model.addAttribute("loginError", "usuarios y contraseñas: 4 caracteres mínimo");
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		} 
		else 
		{
			Usuario u = null;
			try {
				u = (Usuario)entityManager.createNamedQuery("userByLogin")
					.setParameter("loginParam", formLogin).getSingleResult();
				
			} catch (NoResultException nre) {
				if (formPass.equals(formPass2)) 
				{
					// UGLY: register new users if they do not exist and pass is 4 chars long
					logger.info("no-such-user; creating user {}", formLogin);				
					Usuario user = Usuario.createUser(formLogin, formPass, "usuario", null, "Sin especificar", formEmail);
					entityManager.persist(user);				
				} 
				else {
					logger.info("no such login: {}", formLogin);
				}
				model.addAttribute("loginError", "error en usuario o contraseña");
			}
		}
		
		// redireccion a login cuando el registro ha sido correcto
		return "redirect:login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@Transactional
	public String login(
			@RequestParam("login") String formLogin,
			@RequestParam("pass") String formPass,
			String destino,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {
		
		logger.info("Login attempt from '{}' while visiting '{}'", formLogin);
		destino="login";
		
		// La instruccion model.addAtribute creo que pone en el modelo (los jsp) el mensaje del seguindo parametro 
			//en el nombre de la clase que es el primer parametro
		
				if (formLogin == null || formLogin.length() < 3 || formPass == null || formPass.length() < 3) {
					model.addAttribute("loginError", "usuarios y contraseñas: 3 caracteres mínimo");
					response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
				} else {
					Usuario u = null;
					try {
						//Hay que entender que hace esta instruccion
						u = (Usuario)entityManager.createNamedQuery("userByLogin")
							.setParameter("loginParam", formLogin).getSingleResult();
						if (u.isPassValid(formPass)) {
							model.addAttribute("loginError","pass valido");
							logger.info("pass valido");
							session.setAttribute("usuario", u);
							getTokenForSession(session);
							destino="home";
						} else {
							logger.info("pass no valido");
							model.addAttribute("loginError", "error en usuario o contraseña");
							response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
						}
					} catch (NoResultException nre) {
						
						model.addAttribute("loginError", "error en usuario o contraseña");
					}
				}

				return "redirect:" + destino;
			}
	
	/**
	 * Logout. Elimina la sesion actual y cierra sesion redirigiendo a la pantalla de login.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("Usuario '{}' logged out", session.getAttribute("usuario"));
		session.invalidate();
		return "redirect:login";
	}
	
	
	/*
	 *	Metodo donde se pueden modificar los datos del usuario una vez esta logueado.
	 *	Además se puede agregar informacion como provincia, fecha de nacimiento etc.
	 */
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/mi_perfil", method = RequestMethod.POST)
	@Transactional
	public String modPerfil(
			@RequestParam("nick_perfil") String nick,
			@RequestParam("prov_perfil") String provincia,
			@RequestParam("email_perfil") String email,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {
		
			Usuario u = null;
			try {
								
				u = (Usuario)entityManager.createNamedQuery("userByLogin")
					.setParameter("loginParam", nick).getSingleResult();
				
				u.setProvincia(provincia);
				u.setEmail(email);
				
				entityManager.persist(u);
				
				session.setAttribute("usuario", u);
				getTokenForSession(session);
				
				
			} catch (NoResultException nre) {
		
					//Error
			}
		
		// redireccion a login cuando el registro ha sido correcto
		return "redirect:mi_perfil";
	}

	@RequestMapping(value = "/crearActividad", method = RequestMethod.POST)
	@Transactional
	public String crearActividad(
			@RequestParam("nombre_actv") String nombre_actv,
			@RequestParam("max_participantes") int max_participantes,
			@RequestParam("imagen") MultipartFile imagen_actv,
			@RequestParam("tag") String tag,
			@RequestParam("fecha_ini") Date fecha_ini,
			Model model, HttpSession session) throws IOException {

			Actividad a = null;
			Usuario usuario_creador = null;
			Tag tag_actv = null;
			String imagen="";
			String extension="";
			
			try {
				
				tag_actv = Tag.crearTag(tag);
				usuario_creador = (Usuario)session.getAttribute("usuario");
				a = Actividad.crearActividad(nombre_actv,max_participantes,usuario_creador,
						tag_actv,fecha_ini, fecha_ini, "", "");
			
				entityManager.persist(a);

				if (!imagen_actv.isEmpty()) {
			        try {
			        	
			        	String nombre_imagen = imagen_actv.getOriginalFilename();
						extension = nombre_imagen.substring(nombre_imagen.lastIndexOf("."),nombre_imagen.length());
						
			        	
						imagen = a.getId()+extension;
						
						byte[] bytes = imagen_actv.getBytes();
		                BufferedOutputStream stream =
		                        new BufferedOutputStream(
		                        		new FileOutputStream(ContextInitializer.getFile("images", imagen)));
		                stream.write(bytes);
		                stream.close();
			        }
			        catch(Exception e){
			        	
			        	//Error
			        	
			        }
				}
				else{
					
				}

				a.setIdImagen(imagen);
				
				entityManager.persist(a);
		
				
			} catch (NoResultException nre) {
	
				//Error
			}

				return "redirect:mis_actividades";
		}
	
	@RequestMapping(value = "/crearMensaje", method = RequestMethod.POST)
	@Transactional
	public String crearMensaje(
			@RequestParam("asunto") String titulo,
			@RequestParam("destinatario") String destino,
			@RequestParam("mensaje") String contenido,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session){
			
			Mensaje m = null;
			Usuario u = null; // El usuario que manda el mensaje
			Usuario d = null; // Destinatario
			
			try{
				u=(Usuario)session.getAttribute("usuario");
				
				d = (Usuario)entityManager.createNamedQuery("userByLogin")
						.setParameter("loginParam", destino).getSingleResult();
				
				//d = entityManager.find(Usuario.class, destino);
				
				
				m = Mensaje.crearMensaje(titulo, contenido, "ordinario",u, d);
				entityManager.persist(m);
			}
			catch(NoResultException nre){
				//ERROR
			}
		
			return "redirect:mensajes";
		}

	

	@RequestMapping(value = "/addUsuario", method = RequestMethod.POST)
	@Transactional
	public String addUsuario(){
				
		
			return "redirect:";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("actividades", entityManager.createNamedQuery("allActividades").getResultList());
	
		return "home";
	}
	
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Model model){
		model.addAttribute("actividades", entityManager.createNamedQuery("allActividades").getResultList());
		return "home";
	}
	
	
	@RequestMapping(value = "/crear", method = RequestMethod.GET)
	public String crear(Model model){
		model.addAttribute("tags", entityManager.createNamedQuery("allTags").getResultList());

		model.addAttribute("usuarios", entityManager.createNamedQuery("allUsers").getResultList());
		return "crear";
	}
	
	@RequestMapping(value = "/mis_actividades", method = RequestMethod.GET)
	public String mis_actividades(Model model){
		model.addAttribute("actividades", entityManager.createNamedQuery("allActividades").getResultList());
		return "mis_actividades";
	}
	
	@RequestMapping(value = "/buscar", method = RequestMethod.GET)
	public String buscar(Model model){
		model.addAttribute("actividades", entityManager.createNamedQuery("allActividades").getResultList());
		
		return "buscar";
	}
	
	@RequestMapping(value = "                             ", method = RequestMethod.GET)
	public String actividad(@PathVariable("id") long id,HttpServletResponse response,Model model){
		Actividad a = entityManager.find(Actividad.class, id);
		if (a == null) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			logger.error("No such actividad: {}", id);
		} else {
			model.addAttribute("actividad", a);
		}
		model.addAttribute("prefix", "../");
		return "actividad";
	}
	
	
	
	@RequestMapping(value = "/actividad_creador", method = RequestMethod.GET)
	public String actividad_creador(){
		return "actividad_creador";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value = "/perfil/{id}", method = RequestMethod.GET)
	public String perfil(@PathVariable("id") long id,HttpServletResponse response,Model model){
		Usuario p=entityManager.find(Usuario.class, id);
		if (p == null) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			logger.error("No such perfil: {}", id);
		} else {
			model.addAttribute("perfil", p);
		}
		model.addAttribute("prefix", "../");
		
		return "perfil";
	}

	
	@RequestMapping(value = "/mi_perfil", method = RequestMethod.GET)
	public String mi_perfil(){
		return "mi_perfil";
	}
	
	@RequestMapping(value = "/mensajes", method = RequestMethod.GET)
	public String mensajes(Model model, HttpSession session){
		Usuario u = null;
		u=(Usuario)session.getAttribute("usuario");
		//model.addAttribute("mensajes_entrada", entityManager.createNamedQuery("mensajesEntrada").setParameter("destinoParam", u).getSingleResult());
		
		return "mensajes";
	}
	
	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public String registro(){
		return "registro";
	}
	
	@RequestMapping(value = "/sin_registro", method = RequestMethod.GET)
	public String sin_registro(){
		return "sin_registro";
	}
	
	@RequestMapping(value = "/administrador", method = RequestMethod.GET)
	@Transactional
	public String administrador(Model model){
		model.addAttribute("actividades", entityManager.createNamedQuery("allActividades").getResultList());
		model.addAttribute("mensajes", entityManager.createNamedQuery("allMensajes").getResultList());
		model.addAttribute("usuarios", entityManager.createNamedQuery("allUsers").getResultList());
		model.addAttribute("tags", entityManager.createNamedQuery("allTags").getResultList());
		model.addAttribute("novedades", entityManager.createNamedQuery("allNovedades").getResultList());
		model.addAttribute("pagos", entityManager.createNamedQuery("allPagos").getResultList());
		model.addAttribute("hitos", entityManager.createNamedQuery("allHitos").getResultList());
		model.addAttribute("comentarios", entityManager.createNamedQuery("allComentarios").getResultList());
		model.addAttribute("foros", entityManager.createNamedQuery("allForos").getResultList());

		return "administrador";
	}
	
	
	static String getTokenForSession (HttpSession session) {
	    String token=UUID.randomUUID().toString();
	    session.setAttribute("csrf_token", token);
	    return token;
	}
	
}
