package admin.web;
 
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.domain.project;
import admin.domain.projectWithBLOBs;


import admin.web.projectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	@Resource
	private projectService ps;
	


	/*  /admin/project/list.do */
	@RequestMapping(value="/list.do")
	public String toUserList(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.printf("Enter list.do with Context %s\n",request.getContextPath());
		System.out.printf("Enter list.do with parameter %s\n",request.getServletPath());
		
		List<projectWithBLOBs> p = this.ps.getAllprojects();
		model.addAttribute("projects", p);
		return "project/list";
	    
	}
	
	
}

