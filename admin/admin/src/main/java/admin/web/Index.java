package admin.web;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.domain.User;
import admin.web.IUserService;
 
@Controller
@RequestMapping("/")
public class Index {
	
    @RequestMapping(value = {"/","", "/index", "/index.html" }, method = RequestMethod.GET)
    public String toIndex(HttpServletRequest request) {
 
        return "index";
    }
    
    
}

