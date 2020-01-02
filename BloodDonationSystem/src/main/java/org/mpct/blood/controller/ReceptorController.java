package org.mpct.blood.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ReceptorController {
	@PostMapping("/SubmitReceptor")
	public ModelAndView submitDonator(HttpServletRequest req)
	{
		try {
	String name=req.getParameter("name");
	String phone=req.getParameter("phone");
	String blood=req.getParameter("blood");
	String quantity=req.getParameter("quantity");
	String date=req.getParameter("date");
	String state=req.getParameter("state");
	String city=req.getParameter("city");
	String hospital=req.getParameter("hospital");
	String terms=req.getParameter("term");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorproject","root","1234");
	Statement smt=cn.createStatement();
	String q="insert into receptor (blood,city,date,hospital,name,phone,state,termscondition,quantity) values('"+blood+"','"+city+"','"+date+"','"+hospital+"','"+name+"','"+phone+"','"+state+"','"+terms+"','"+quantity+"')";
	smt.executeUpdate(q);
	cn.close();
	 Map<String,Object> model=new HashMap<String,Object>();
    model.put("Message1", "Your request have been submitted!!!");
    model.put("Message2", "We try to be responsive as possible.");
    model.put("Message3", "We'll get back to you soon.");
	return new ModelAndView("UsersHomePage","model",model);
		}catch(Exception e) {System.out.println(e);
		 Map<String,Object> model=new HashMap<String,Object>();
		    model.put("Message1", "Please fill again an unknown error occured");
			return new ModelAndView("UsersHomePage","model",model);
		}
		}

}
