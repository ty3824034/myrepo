package org.mpct.blood.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mpct.blood.model.BloodDetails;
import org.mpct.blood.model.IndiaCity;
import org.mpct.blood.model.IndiaHospital;
import org.mpct.blood.model.IndiaState;
import org.mpct.blood.model.Users;
import org.mpct.blood.repository.BloodRepository;
import org.mpct.blood.repository.CityRepository;
import org.mpct.blood.repository.HospitalRepository;
import org.mpct.blood.repository.StateRepository;
import org.mpct.blood.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class UserController {

	@Autowired
	StateRepository staterepository;
	@Autowired
	CityRepository cityrepository;
	@Autowired
	UsersRepository usersrepository;
    @Autowired
    HospitalRepository hospitalrepository;
    @Autowired
    BloodRepository bloodrepository;
@GetMapping("/UserLogin")
public ModelAndView userLogin()
{   
	return new ModelAndView("UserLogin","user",new Users());
	}

@PostMapping("/CheckLoginUser")
public ModelAndView checkLogin(@ModelAttribute Users user, HttpServletRequest req)
{ List<Users> E=usersrepository.checkLogin(user.getPhone(), user.getPassword());
  if(E.size()==0)
  {
	  Map<String,Object>model=new HashMap<String,Object>();
	  model.put("user", new Users());
	  model.put("Message", "Invalid Id & Password");
	  return new ModelAndView("UserLogin",model);
  }
  else {
	  
	  HttpSession ses=req.getSession();
      ses.setAttribute("SES_User", E.get(0));
	  return new  ModelAndView("UsersHomePage","user",E);
  }
}

@GetMapping("/Logout")
public ModelAndView userLogout(HttpServletRequest req)
{HttpSession ses=req.getSession();
  ses.invalidate();
 return new ModelAndView("UserLogin","user",new Users());	
}

@GetMapping("/Verification")	
public ModelAndView phoneVerification()
{
	return new ModelAndView("Verification","user",new Users());
	}

@GetMapping("/Register")	
public ModelAndView register()
{
	return new ModelAndView("Register","user",new Users());
	}

@PostMapping("/SubmitNewUser")
public ModelAndView submitPage(HttpServletRequest req ,@RequestPart("pic") MultipartFile file1, @RequestPart("proof") MultipartFile file2, @RequestPart("certificate") MultipartFile file3,  @ModelAttribute Users user)
{  	HttpSession ses=req.getSession();
	System.out.println("\nSubmited Random OTP: "+ses.getAttribute("code"));
	System.out.println("\nSubmited user OTP: "+req.getParameter("Code"));
	int code1=(int) ses.getAttribute("code");
	int code2=Integer.parseInt((String)req.getParameter("Code"));
	
	
	if(code1==code2)
	{user.setPicture(file1.getOriginalFilename());
   user.setIdproof(file2.getOriginalFilename());
	try {
		DateFormat df= new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		   Date dateobj= new Date();
			String L=df.format(dateobj);
	file1.transferTo(new File("C:\\Users\\intel\\Documents\\workspace-sts-3.9.10.RELEASE\\BloodDonationSystem\\src\\main\\resources\\static\\photos\\"+L));
	file2.transferTo(new File("C:\\Users\\intel\\Documents\\workspace-sts-3.9.10.RELEASE\\BloodDonationSystem\\src\\main\\resources\\static\\idproof\\"+L));
	file3.transferTo(new File("C:\\Users\\intel\\Documents\\workspace-sts-3.9.10.RELEASE\\BloodDonationSystem\\src\\main\\resources\\static\\bcertificate\\"+L));
	}catch(Exception e) {}
	
    usersrepository.save(user);
    Map<String,Object> model=new HashMap<String,Object>();
    model.put("user",new Users());
    model.put("Message1", "You have registered successfully");
    model.put("Message2", "Please Login");
	return new ModelAndView("UserLogin",model);
			}
	else {
	Map<String,Object> model=new HashMap<String,Object>();
    model.put("user",user);
    model.put("Message1", "Incorrect OTP");
    model.put("Message2", "Try Again");
	return new ModelAndView("Register",model);
	
		}
	}
@GetMapping("/OurHomePage")
public ModelAndView adminHomePage()
{
	return new ModelAndView("OurHomePage","user",new Users());
	}
@GetMapping("/FetchState")
public  List<IndiaState> fetchState()
{   List<IndiaState> L=staterepository.findAll();
return L;
}
@GetMapping("/FetchCity")
public List<IndiaCity> fetchCity(HttpServletRequest req)
{   List<IndiaCity> L=cityrepository.findCityByState(req.getParameter("sn"));
    return L;
	}
@GetMapping("/FetchHospital")
public List<IndiaHospital> fetchHospital(HttpServletRequest req)
{   List<IndiaHospital> L=hospitalrepository.findHospitalByCity(req.getParameter("cn"));
    return L;
	}

@GetMapping("/FetchBlood")
public List<BloodDetails> fetchBlood(HttpServletRequest req)
{   List<BloodDetails> L=bloodrepository.findBloodByHospital(req.getParameter("hn"));
    return L;
	}

@GetMapping("/FetchBloodQuantity")
public List<BloodDetails> fetchBloodQuantity(HttpServletRequest req)
{   List<BloodDetails> L=bloodrepository.findQuantityByBlood(req.getParameter("hn"), req.getParameter("bt"));
    return L;
	}


@PostMapping("/CheckOTP")
public ModelAndView checkOTP(HttpServletRequest req)
{   try {
	String phone=req.getParameter("phone");
	// Construct data
	String apiKey = "apikey=" + "mMtLLSnNz34-sMFmknyYinBfFBPNWnd3KVdsSeKXRq";
	Random rn=new Random();
	int otp=rn.nextInt(99999);
	System.out.print("UserController OTP "+otp);
	String message = "&message=" + "Your one time password for registering on BloodDonation is "+otp;
	String sender = "&sender=" + "TXTLCL";
	String numbers = "&numbers=" + "91"+phone;
	
	HttpSession ses=req.getSession();
    ses.setAttribute("phone", phone);
    ses.setAttribute("code",otp);

	// Send data
	HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
	String data = apiKey + numbers + message + sender;
	conn.setDoOutput(true);
	conn.setRequestMethod("POST");
	conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
	conn.getOutputStream().write(data.getBytes("UTF-8"));
	final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	final StringBuffer stringBuffer = new StringBuffer();
	String line;
	while ((line = rd.readLine()) != null) {
		stringBuffer.append(line);
	}
	rd.close();
	
	System.out.println( stringBuffer.toString());
	return new ModelAndView("Register","user",new Users());
} catch (Exception e) {
	System.out.println("Error SMS "+e);
	return new ModelAndView("Error "+e);
}
	
	}

@PostMapping("/OTP")
public ModelAndView OTP(HttpServletRequest req) throws KeyManagementException, NoSuchAlgorithmException, IOException
{  try{
	String phone=req.getParameter("phone");
	Random rn=new Random();
    int otp=rn.nextInt(99999);
	String message=URLEncoder.encode("Your one time password for registering on BloodDonation is "+otp, "UTF-8");
	String baseurl = "http://web.springedge.com/api/web/send/?apikey=632s328863w07io97z6794u48cd1i031";
	HttpSession ses=req.getSession();
    ses.setAttribute("phone", phone);
    ses.setAttribute("code",otp);
    System.out.println(otp);
	/*URL url = new URL(baseurl+"&sender=SEDEMO&to=91"+phone+"&message="+message);

	HttpURLConnection con = (HttpURLConnection) url.openConnection();
	con.setRequestMethod("GET");
	con.setDoOutput(true);
	con.getOutputStream();
	con.getInputStream();
	//BufferedReader rd;*/
	return new ModelAndView("Register","user",new Users());
} catch (Exception e) {
	System.out.println("Error SMS "+e);
	return new ModelAndView("Error "+e);
}

	}


}
