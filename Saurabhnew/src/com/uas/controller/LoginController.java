package com.uas.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uas.bean.Application;
import com.uas.bean.LoginBean;
import com.uas.bean.Participant;
import com.uas.service.ILoginService;
import com.uas.service.IStudentService;


@Controller
public class LoginController 
{
	@Autowired
	private ILoginService  ilogin=null;
	
	@RequestMapping("/success")
	public String GetSuccessPage(){
		return "success";
	}

	@RequestMapping("/About")
	public String GetaboutPage(){
		return "About";
	}
	@RequestMapping("/campus")
	public String GetcampusPage(){
		return "campus";
	}
	@RequestMapping("/placement")
	public String GetplacementPage(){
		return "placement";
	}
	
	
	@RequestMapping("/ApplicationForm")
	public String GetApplicationPage(){
		return "ApplicationForm";
	}
	
	@RequestMapping("/MACapplication")
	public String GetmacApplicationPage(){
		return "MACapplication";
	}
	
	@RequestMapping("/uni")
	public String GetUniPage(){
		return "uni";
	}
	
	
	@RequestMapping(value="/updatebyId" ,method=RequestMethod.POST)
	public String GetUpdatePage(Model m){
		m.addAttribute("updatestudentObj",new Application());
		return "updatebyId";	}
	
	@RequestMapping("/home")
	public String getHomePage(){
		return "home";
	}

	@RequestMapping("/admin")
	public String getAdminPage(){
		return "admin";
	}
	
	@RequestMapping("/login")
	public String getLoginPage(Model m)
	{
		m.addAttribute("loginObj",new LoginBean());
		return "login";
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String doValidate(Model m,@ModelAttribute("loginObj")LoginBean log)
	{
		 String path=null;
		 boolean res;
		 String usr=log.getUserName();
		 String pass=log.getPassword();
		 String role=log.getRole();
			if(res=ilogin.validateLoginDetails(usr,pass,role))
				{
					 path="admin";
				}
			else if(res=ilogin.validateLoginDetails2(usr,pass,role))
				{ 
				path="mac";
				}
			else
			{
				m.addAttribute("error","Enter the correct Credentials");
				path="error";
			}
			return path;
		
	}
	
	//Application app=new Application();
	
	@RequestMapping("ApplicationForm")
	public String getHome(Model m){
		m.addAttribute("studentObj",new Application());

		return "ApplicationForm";
	}

	@Autowired
	private IStudentService serv;

	@RequestMapping(value="store",method=RequestMethod.POST)
	public String storeStudentDetails(Model m , @ModelAttribute("studentObj") Application rc){
		System.out.println("in adding method");
		String target = null;
		
		
		int appid = serv.addStudentDetails(rc);
		System.out.println("rid taken"+ appid);
		if(appid>0)
		{
			System.out.println("Cheking rid ");
			m.addAttribute("msg","You have been registered successfully");
			m.addAttribute("appid", appid);
			target="success";
		}
		else
		{
			target= "ApplicationForm";
		}
		
		return target;
	}

	@RequestMapping(value="viewAll")
	public ModelAndView viewAll(Model m, @ModelAttribute("applicantObj")Application ap){
		ModelAndView mv=new ModelAndView();
		ArrayList<Application> rlist=serv.getAllStudentInfo();
		mv.setViewName("viewAll");
		mv.addObject("data", rlist);
		return mv;
	}
	
	@RequestMapping("Participant")
	public String getHome2(Model m){
		m.addAttribute("participantObj",new Participant());

		return "Participant";
	}


	@RequestMapping(value="hello",method=RequestMethod.POST)
	public String storeParticipantDetails(Model m , @ModelAttribute("participantObj") Participant pc){
		System.out.println("in adding method");
		String target = null;
		
		
		int pid = serv.addParticipantDetails(pc);
		System.out.println("rid taken"+ pid);
		if(pid>0)
		{
			System.out.println("Cheking rid ");
			m.addAttribute("msg1","You have added details successfully");
			m.addAttribute("pid", pid);
			target="success1";
		}
		else
		{
			target= "Participant";
		}
		
		return target;
	}
	



	@RequestMapping(value="updateDetails",method=RequestMethod.POST)                                                          //Update Hotel
	public String update(Model m,@ModelAttribute("applicantObj") Application ap,@RequestParam("id") int id)
	{
		String target=null;
		ap.setApplicationId(id);
		int result=serv.updateStatusDetails(ap);
		if(result > 0)
		{
			m.addAttribute("msg","Status updated Successfully for");
			m.addAttribute("appId",ap.getApplicationId());
			target="updatestatussuccess";
		}
		else
		{
			target="home";
		}
		return target;

	}

	@RequestMapping("/status")
	public String getStatusPage(Model m)
	{
		m.addAttribute("statusObj",new Application());

		return "status";
		
	}

	@RequestMapping("status1")
	public ModelAndView viewStatus(Model m,@ModelAttribute("statusObj")Application  app){
		ModelAndView mv1=new ModelAndView();
		int id=app.getApplicationId();
		ArrayList<Application> rlist1=serv.getAllStatus(id);
		mv1.setViewName("status1");
		mv1.addObject("data1", rlist1);
		return mv1;
	}
}


	
	






	
	
	


