package com.bus.cap.controller;

import java.sql.SQLException;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bus.cap.constants.Constant;
import com.bus.cap.entities.Business;
import com.bus.cap.persistence.QueryDao;

@Controller
public class BusinessController {
	private final static Logger log = Logger.getLogger(BusinessController.class);
	
	@Autowired
	QueryDao dao;
	
	@RequestMapping(value={"/business", "/business/{id}"}, method= RequestMethod.GET)
	public ModelAndView home(@PathVariable Map<String, String> pathVariables){
		ModelAndView mv = new ModelAndView();
		if(pathVariables.containsKey("id")){
			mv.addObject("business", dao.get(Long.valueOf(pathVariables.get("id")), Business.class));
			mv.setViewName("business/detail");
		}	else{
			mv.setViewName("business/create");	
		}	
		return mv;
	}
	
	@RequestMapping(value={"/createBusiness","/business/updateBusiness"}, method = RequestMethod.POST)
	public ModelAndView create(@ModelAttribute Business business, ModelMap map) {
		ModelAndView mv = new ModelAndView();
		try {
			dao.save(business);
			mv.addObject("business", business);
			mv.addObject("message" , Constant.SUCCESS);
			mv.setViewName("business/success");
		} catch (Exception ex) {
			log.error("Error saving business", ex);
			mv.addObject("message" , Constant.FAIL);	
			mv.setViewName("business/fail");
		}
		return mv;
	}
	
	@RequestMapping(value="/business/deleteBusiness/{id}", method=RequestMethod.POST)
	public ModelAndView delete(@PathVariable Map<String, String> pathVariables){
		ModelAndView mv = new ModelAndView();
		try {
			if(pathVariables.containsKey("id")){
				dao.delete(Long.valueOf(pathVariables.get("id")), Business.class);
			}			
			mv.setViewName("business/success");
			mv.addObject("message", Constant.DELETE);
		} catch (SQLException e) {
			log.error("Error deleting business", e);
			mv.setViewName("business/fail");
			mv.addObject("message", Constant.FAIL);
		}
		return mv;
	}

}
