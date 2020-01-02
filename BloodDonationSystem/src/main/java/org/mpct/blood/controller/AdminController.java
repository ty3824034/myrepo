package org.mpct.blood.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mpct.blood.model.Admin;
import org.mpct.blood.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {

	@Autowired
	AdminRepository adminrepository;
@GetMapping("/AdminLogin")
public ModelAndView adminLogin()
{
	return new ModelAndView("AdminLogin","admin",new Admin());
	}

@PostMapping("/CheckLoginAdmin")
public ModelAndView adminCheckLogin(@ModelAttribute Admin admin)
{ 
	List<Admin> E=adminrepository.checkAdminLogin(admin.getAdminid(), admin.getPassword());
if(E.size()==0)
{
	  Map<String,Object>model=new HashMap<String,Object>();
	  model.put("admin", new Admin());
	  model.put("Message", "Invalid Admin Id & Password");
	  return new ModelAndView("AdminLogin",model);
}
else {

	  return new  ModelAndView("AdminHomePage","admin",E);
}
}
}