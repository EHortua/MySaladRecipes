package com.recetario.salad.models;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "listaensaladaingrediente")
@Setter
@Getter
public class Listaensaladaingrediente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    @OneToOne
    @JoinColumn(name = "EnsaladaID", referencedColumnName = "ID")
    private Ensalada ensaladaID;
    @OneToOne
    @JoinColumn(name = "IngredienteID", referencedColumnName = "ID")
    private Ingrediente ingredienteID;


}
