package org.example.models.services;

import org.example.models.entities.Contacto;

import java.util.List;
import java.util.Optional;

public interface IContactoServices {

    public void create (Contacto contacto);

    void delete(Long idContacto);

    public List<Contacto> readAll();


    Optional<Contacto> readOne(Long idContacto);

    void update(Contacto contacto);

    }


