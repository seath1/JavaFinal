package org.example.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public ModelAndView mostrarIndex() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = ("/login"), method = RequestMethod.GET)
    public ModelAndView mostrarLogin(){
        return new ModelAndView("login");
    }

    @RequestMapping(value = ("/logout"))
    public ModelAndView logout(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null){
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return new ModelAndView("redirect:/login?logout");
    }
}
