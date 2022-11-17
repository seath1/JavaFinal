package org.example.models.entities;

import javax.persistence.*;

@Entity
@Table (name = "contacto")
public class Contacto {

    @Id
    @Column(name = "id_contacto")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idContacto;
    @Column(name = "nombre_contacto")
    private String nombreContacto;
    @Column(name = "email_contacto")
    private String emailContacto;
    @Column(name = "mensaje_contacto")
    private String mensajeContacto;

    public Contacto() {
    }

    public Contacto(Long idContacto, String nombreContacto, String emailContacto, String mensajeContacto) {
        this.idContacto = idContacto;
        this.nombreContacto = nombreContacto;
        this.emailContacto = emailContacto;
        this.mensajeContacto = mensajeContacto;
    }

    public Contacto(String nombreContacto, String emailContacto, String mensajeContacto) {
        this.nombreContacto = nombreContacto;
        this.emailContacto = emailContacto;
        this.mensajeContacto = mensajeContacto;
    }

    public Long getIdContacto() {
        return idContacto;
    }

    public void setIdContacto(Long idContacto) {
        this.idContacto = idContacto;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    public String getEmailContacto() {
        return emailContacto;
    }

    public void setEmailContacto(String emailContacto) {
        this.emailContacto = emailContacto;
    }

    public String getMensajeContacto() {
        return mensajeContacto;
    }

    public void setMensajeContacto(String mensajeContacto) {
        this.mensajeContacto = mensajeContacto;
    }

    @Override
    public String toString() {
        return "Contacto{" +
                "idContacto=" + idContacto +
                ", nombreContacto='" + nombreContacto + '\'' +
                ", emailContacto='" + emailContacto + '\'' +
                ", mensajeContacto='" + mensajeContacto + '\'' +
                '}';
    }
}
