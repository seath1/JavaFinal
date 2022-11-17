package org.example.models.services;

import org.example.models.entities.Contacto;

import java.util.List;

public interface IContactoServices {

    public void create (Contacto contacto);

    void delete(Integer idContacto);

    List<Contacto> readAll();


    void update(Contacto contacto);

    Contacto readOne(int id);
}


