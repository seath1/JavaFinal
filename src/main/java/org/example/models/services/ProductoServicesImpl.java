package org.example.models.services;

import org.example.models.entities.Producto;
import org.example.models.repositories.IProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductoServicesImpl implements IProductoServices {

    @Autowired
    IProductoRepository productoRepository;

    @Override
    public void create(Producto producto){productoRepository.save(producto);}

    @Override
    public List<Producto> readAll(){return productoRepository.findAll();}

    @Override
    public Optional<Producto> readOne(Long idProducto) {
        return productoRepository.findById(idProducto);
    }

    @Override
    public void update(Producto producto){
        productoRepository.save(producto);
    }


    @Override
    public void delete(Long idProducto){
        productoRepository.deleteById(idProducto);
    }
}

