package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tienda")
public class TiendaController {

    @RequestMapping(path = "/ver", method = RequestMethod.GET)
    public ModelAndView mostrarTienda() {
        return new ModelAndView("tienda");
    }
}
