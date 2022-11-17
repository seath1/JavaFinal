package org.example.models.services;


import org.example.models.entities.Contacto;
import org.example.models.repositories.IContactoRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class ContactoServicesImpl {

    @Autowired
    IContactoRepository contactoRepository;

    public ContactoServicesImpl(){}

    public void create(Contacto contacto){contactoRepository.save(contacto);}

    public List<Contacto> readAll(){return contactoRepository.findAll();}

    public Optional<Contacto> readOne(Long idContacto) {
        return contactoRepository.findById(idContacto);
    }

    public void update(Contacto contacto){
        contactoRepository.save(contacto);
    }

    public void delete(Long idUsuario){
        contactoRepository.deleteById(idUsuario);
    }
}
