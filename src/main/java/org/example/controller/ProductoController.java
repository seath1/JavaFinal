package org.example.controller;

import org.example.models.entities.Producto;
import org.example.models.services.ProductoServicesImpl;
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
@RequestMapping("/producto")
public class ProductoController {

    @Autowired
    private ProductoServicesImpl productoServices;

    @RequestMapping(value = ("/lista"), method = RequestMethod.GET)
    public ModelAndView mostrarProductos(){
        ModelAndView model = new ModelAndView();
        List<Producto> productos = productoServices.readAll();
        model.addObject("productos", productos);
        model.setViewName("ListaProductos");
        return model;
    }

    @RequestMapping(value = ("/agregar"), method = RequestMethod.GET) //lo voy a usar en el boton para mostrar el formulario de crearUsuario
    public ModelAndView agregarProducto(){
        ModelAndView model = new ModelAndView();
        Producto producto = new Producto();
        model.addObject("productoForm", producto);
        model.setViewName("crearProducto");
        return model;
    }

    @RequestMapping(value = "/actualizar/{id}", method = RequestMethod.GET)
    public ModelAndView actualizarProducto(@PathVariable Long id){
        ModelAndView model = new ModelAndView();
        Optional<Producto> producto = productoServices.readOne(id);
        model.addObject("productoForm", producto);
        model.setViewName("crearProducto");
        return model;
    }

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public ModelAndView guardarOEditarProducto(@ModelAttribute("productoForm") Producto producto){
        if(producto.getIdProducto() != null){
            productoServices.update(producto);
        } else {
            productoServices.create(producto);
        }
        return  new ModelAndView("redirect:/producto/lista");
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView eliminarProducto(@PathVariable("id") Long id){
        productoServices.delete(id);
        return new ModelAndView("redirect:/producto/lista");
    }
}
