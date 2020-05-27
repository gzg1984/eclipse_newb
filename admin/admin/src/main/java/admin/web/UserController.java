package admin.web;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
import admin.domain.User;
import admin.web.IUserService;
 
@Controller
@RequestMapping("/")
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
}

