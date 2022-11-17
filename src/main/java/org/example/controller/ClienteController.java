package org.example.controller;

import org.example.models.entities.Cliente;
import org.example.models.services.ClienteServicesImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/cliente")

public class ClienteController {
    private ClienteServicesImpl clienteServices;


    @RequestMapping(value = ("/lista") , method = RequestMethod.GET)
    public ModelAndView mostrarCliente(){
        ModelAndView model = new ModelAndView();
        List<Cliente> contactos = clienteServices.readAll();
        model.addObject("cliente", contactos);
        model.setViewName("cliente");
        return model;
    }

    @RequestMapping(value = ("/agregar") , method = RequestMethod.GET)
    public ModelAndView agregarCliente(){
        ModelAndView model = new ModelAndView();
        Cliente cliente = new Cliente();
        model.addObject("cliente", cliente );
        model.setViewName("crearCliente");
        return model;
    }

    @RequestMapping(value = "/actualizar", method =  RequestMethod.GET)
    public ModelAndView actualizarCliente (@PathVariable Long id){
        ModelAndView model = new ModelAndView();
        Optional<Cliente> cliente = clienteServices.readOne(id);
        model.addObject("cliente", cliente);
        model.setViewName("crearCliente");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardarEditarCliente (@ModelAttribute("cliente") Cliente cliente){
        if(cliente.getIdCliente() != null){
            clienteServices.update(cliente);
        } else {
            clienteServices.create(cliente);
        }
        return  new ModelAndView("redirect:/cliente/lista");
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminaCliente(@PathVariable("id") Long id){
        clienteServices.delete(id);
        return new ModelAndView(("redirect:/cliente/lista"));
    }

}
