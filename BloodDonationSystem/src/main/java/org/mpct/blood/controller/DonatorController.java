package org.mpct.blood.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mpct.blood.repository.DonatorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class DonatorController {
@Autowired
DonatorRepository donaterepository;
	@PostMapping("/SubmitDonator")
	public ModelAndView submitDonator(HttpServletRequest req)
	{
		try {
	String name=req.getParameter("dname");
	String phone=req.getParameter("dphone");
	String blood=req.getParameter("dblood");
	String date=req.getParameter("ddate");
	String state=req.getParameter("dstate");
	String quantity=req.getParameter("dquantity");
	String city=req.getParameter("dcity");
	String hospital=req.getParameter("dhospital");
	String terms=req.getParameter("dterm");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorproject","root","1234");
	Statement smt=cn.createStatement();
	String q="insert into donator (dblood,dcity,ddate,dhospital,dname,dphone,dstate,dtermscondition,dquantity) values('"+blood+"','"+city+"','"+date+"','"+hospital+"','"+name+"','"+phone+"','"+state+"','"+terms+"','"+quantity+"')";
	smt.executeUpdate(q);
	cn.close();
	 Map<String,Object> model=new HashMap<String,Object>();
    model.put("Message1", "Thanks For Donatation!!!");
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
