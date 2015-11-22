package es.fdi.iw.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@SuppressWarnings("unused")
	public String login(HttpServletRequest request,
	        HttpServletResponse response, 
	        Model model, HttpSession session) {
	         if (true/* formulario tiene buen aspecto */) {
	            session.setAttribute("user", "usuario");
	         } else {
	            /* guardo errores en el modelo */
	            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
	            model.addAttribute("loginError", 
	                "Te lo estás inventando!");
	         }
	         return "home";
	    }
	
	
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
		if (formLogin == null || formLogin.length() < 4 || formPass == null || formPass.length() < 4) 
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
		
				if (formLogin == null || formLogin.length() < 4 || formPass == null || formPass.length() < 4) {
					model.addAttribute("loginError", "usuarios y contraseñas: 4 caracteres mínimo");
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

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(){
		
		return "home";
	}
	
	
	@RequestMapping(value = "/crear", method = RequestMethod.GET)
	public String crear(){
		return "crear";
	}
	
	@RequestMapping(value = "/mis_actividades", method = RequestMethod.GET)
	public String mis_actividades(){
		return "mis_actividades";
	}
	
	@RequestMapping(value = "/buscar", method = RequestMethod.GET)
	public String buscar(){
		return "buscar";
	}
	
	@RequestMapping(value = "/actividad", method = RequestMethod.GET)
	public String actividad(){
		return "actividad";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value = "/perfil", method = RequestMethod.GET)
	public String perfil(){
		return "perfil";
	}
	
	@RequestMapping(value = "/mi_perfil", method = RequestMethod.GET)
	public String mi_perfil(){
		return "mi_perfil";
	}
	
	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public String registro(){
		return "registro";
	}
	
	@RequestMapping(value = "/sin_registro", method = RequestMethod.GET)
	public String sin_registro(){
		return "sin_registro";
	}
}
