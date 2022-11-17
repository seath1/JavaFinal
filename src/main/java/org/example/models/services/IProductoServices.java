package org.example.models.services;

import org.example.models.entities.Producto;

import java.util.List;

public interface IProductoServices {

    public void create (Producto producto);

    void delete(Long idProducto);

    List<Producto> readAll();


    void update(Producto producto);

    Producto readOne(int id);
}
