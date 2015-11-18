package es.fdi.iw.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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

import es.fdi.iw.model.Actividad;
import es.fdi.iw.model.Perfil;

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
	
	public String login(HttpServletRequest request,
	        HttpServletResponse response, 
	        Model model, HttpSession session) {
	         if (true/* formulario tiene buen aspecto */) {
	            session.setAttribute("user", "paco");
	         } else {
	            /* guardo errores en el modelo */
	            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
	            model.addAttribute("loginError", 
	                "Te lo estás inventando!");
	         }
	         return "home";
	    }

//createActividad
	/*@Transactional
	public String actividadFactory(@RequestParam("id") long id, @RequestParam("nombre") String nombre){
		
		Actividad a=Actividad.createActividad(id, nombre);
		id=001;
		entityManager.persist(a);
		
		
		return "redirect:mis_actividades";
	}
	
	//createPerfil
	@RequestMapping(value=" /addPerfil", method=RequestMethod.POST)
	@Transactional
	public String perfilFactory(@RequestParam("email") String email, @RequestParam("nombre") String nombre){
		
		Perfil p=Perfil.createPerfil(email, nombre);
		entityManager.persist(p);
		
	
		
		return "redirect:registro";
	}
	*/

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
