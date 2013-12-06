package org.musicalpatriots.service.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/secure")
public class MenuController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home")
	public String home() {	
		return "index";
	}
	
	// goes to old fruit index page
	@RequestMapping(value = "/search")
	public String search() {
		return "musicsearch";
	}
	
	@RequestMapping(value = "/success")
	public String success() {
		System.out.println("Success hello.jsp called");
		return "hello";
	}
	
}
