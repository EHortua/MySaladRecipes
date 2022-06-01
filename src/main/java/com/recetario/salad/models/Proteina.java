package com.recetario.salad.models;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "proteina")
@Setter
@Getter
public class Proteina {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    private String nombre;
}
