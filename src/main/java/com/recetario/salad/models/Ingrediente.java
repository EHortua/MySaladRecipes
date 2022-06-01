package com.recetario.salad.models;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "ingrediente")
@Setter
@Getter
public class Ingrediente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    private String nombre;
    private String descripcion;
}
