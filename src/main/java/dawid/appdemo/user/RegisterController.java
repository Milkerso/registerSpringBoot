package dawid.appdemo.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.ws.rs.GET;

@Controller
public class RegisterController {

	@Autowired
	private UserService userService;


	@GET
	@RequestMapping(value = {"/", "/index"})
	public ModelAndView registerForm(ModelAndView model) {
		User u = new User();
		model.addObject("user", u);
		model.setViewName("index");
		return model;
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public ModelAndView addUser(ModelAndView modelAndView, User user) {

		User userExists = userService.findByEmail(user.getEmail());

		if (userExists != null) {
			modelAndView.addObject("registerFailed", "Oops!");
		}
		else {
			userService.saveUser(user);
			modelAndView.addObject("registerSuccess", "Udalo Ci sie zarejestrowac uzytkownika o id " + user.getId());
		}
		modelAndView.setViewName("index");
		return modelAndView;
	}



}
