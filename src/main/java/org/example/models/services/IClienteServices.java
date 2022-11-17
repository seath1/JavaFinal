package org.example.models.services;

import org.example.models.entities.Cliente;

import java.util.List;

public interface IClienteServices {

    public void create(Cliente u);
    public List<Cliente> readAll();
    public Cliente readOne (Integer id);
    public void update (Cliente u);
    public void delete (Integer id);

}