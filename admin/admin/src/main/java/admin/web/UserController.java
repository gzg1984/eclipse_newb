package admin.web;
 
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.domain.User;
import admin.domain.Navigation;
import admin.web.IUserService;
 
@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping("/index")
	public String toIndex(HttpServletRequest request,Model model){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "index";
	}


	/* 将list操作转发到 user下的list.jsp页面 */
	@RequestMapping(value="/list.do")
	public String toUserList(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.printf("Enter list.do with Context %s\n",request.getContextPath());
		System.out.printf("Enter list.do with parameter %s\n",request.getServletPath());
		
		List<User> users = this.userService.getAllUser();
		model.addAttribute("users", users);
		return "user/list";
	}
	
}

