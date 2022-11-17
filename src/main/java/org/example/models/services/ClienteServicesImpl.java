package org.example.models.services;

import org.example.models.entities.Cliente;
import org.example.models.repositories.IClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class ClienteServicesImpl {

    @Autowired
    IClienteRepository clienteRepository;

    public ClienteServicesImpl(){}

    public void create(Cliente cliente) {
        clienteRepository.save(cliente);
    }


    public List<Cliente> readAll() {
        return clienteRepository.findAll();
    }


    public Optional<Cliente> readOne(Long idCliente) {
        return clienteRepository.findById(idCliente);
    }


    public void update(Cliente cliente) {
        clienteRepository.save(cliente);
    }


    public void delete(Long idCliente) {
        clienteRepository.deleteById(idCliente);
    }}
