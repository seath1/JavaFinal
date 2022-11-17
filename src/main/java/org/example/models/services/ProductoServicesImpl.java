package org.example.models.services;

import org.example.models.entities.Contacto;
import org.example.models.entities.Producto;
import org.example.models.repositories.IProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class ProductoServicesImpl {

    @Autowired
    IProductoRepository productoRepository;

    public ProductoServicesImpl(){}

    public void create(Producto producto){productoRepository.save(producto);}

    public List<Producto> readAll(){return productoRepository.findAll();}

    public Optional<Producto> readOne(Long idProducto) {
        return productoRepository.findById(idProducto);
    }

    public void update(Producto producto){
        productoRepository.save(producto);
    }

    public void delete(Long idProducto){
        productoRepository.deleteById(idProducto);
    }
}

