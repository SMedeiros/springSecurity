package br.com.newsoft.security.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public final class MainController {

	Logger logger = Logger.getLogger(MainController.class);

	/**
	 * Método responsável por mapear a url /common ela somente loga no 
	 * console a mensagem que foi requisitada e retorna uma string com o nome
	 * do arquivo que deve ser usado na view.
	 * 
	 * @return a string represents a jsp filename will be redirect.
	 */
	@RequestMapping(value = "/common", method = RequestMethod.GET)
	public final String getCommonPage() {
		logger.debug("common page is requested.");
		return "common";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public final String getAdminPage() {
		logger.debug("admin page is requested.");
		return "admin";
	}
}