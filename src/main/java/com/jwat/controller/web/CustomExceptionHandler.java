/*
	@author:Quang Truong
	@date: Feb 12, 2020
*/

package com.jwat.controller.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class CustomExceptionHandler {
	

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handleException() {
		ModelAndView mav = new ModelAndView("errorPage");
		mav.addObject("errCode", "4044 Error Page");
		mav.addObject("errMsg", "The page you are looking for is not avaiable now");
		System.out.println("Not found!!!!");
		return mav;

	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {

		ModelAndView mav = new ModelAndView("errorPage");
		mav.addObject("errMsg", ex.getMessage());
		return mav;

	}
	
	
}
