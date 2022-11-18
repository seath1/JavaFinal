package org.example.controller;

import org.example.models.entities.Contacto;
import org.example.models.services.ContactoServicesImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/contacto")
public class ContactoController {

    @Autowired
    private ContactoServicesImpl contactoServices;

    @RequestMapping(path = "/ver", method = RequestMethod.GET)
    public ModelAndView mostrarContacto() {
        return new ModelAndView("contacto");
    }

    @RequestMapping(value = ("/lista") , method = RequestMethod.GET)
    public ModelAndView mostrarContactos(){
        ModelAndView model = new ModelAndView();
        List<Contacto> contactos = contactoServices.readAll();
        model.addObject("contactos", contactos);
        model.setViewName("ListaContacto");
        return model;
    }

    @RequestMapping(value = ("/agregar") , method = RequestMethod.GET)
    public ModelAndView agregarContactos(){
        ModelAndView model = new ModelAndView();
        Contacto contacto = new Contacto();
        model.addObject("contactoForm", contacto );
        model.setViewName("contacto");
        return model;
    }

    @RequestMapping(value = "/actualizar/{id}", method =  RequestMethod.GET)
    public ModelAndView actualizarContacto(@PathVariable Long id){
        ModelAndView model = new ModelAndView();
        Optional<Contacto> contacto = contactoServices.readOne(id);
        model.addObject("contactoForm", contacto);
        model.setViewName("contacto");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardarEditarContacto(@ModelAttribute("contactoForm") Contacto contacto){
        if(contacto.getIdContacto() != null){
            contactoServices.update(contacto);
        } else {
            contactoServices.create(contacto);
        }
        return  new ModelAndView("redirect:/contacto/lista");
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminarContacto(@PathVariable("id") Long id){
        contactoServices.delete(id);
        return new ModelAndView(("redirect:/contacto/lista"));
    }

}
