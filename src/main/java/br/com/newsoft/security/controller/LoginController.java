package br.com.newsoft.security.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	Logger logger = Logger.getLogger(LoginController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLoginPage(boolean error, ModelMap model) {
		logger.debug("show login page now.");

		if (error)
			model.put("error", "invalid username/password!");
		else
			model.put("error", "");
		
		return "login";
	}

	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String getDeniedPage() {
		logger.debug("denied page is accessed.");
		return "denied";
	}
}