package com.recetario.salad.models;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "listaingredientevitamina")
@Setter
@Getter
public class Listaingredientevitamina {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    @OneToOne
    @JoinColumn(name = "IngredienteID", referencedColumnName = "ID")
    private Ingrediente ingredienteID;
    @OneToOne
    @JoinColumn(name = "VitaminaID", referencedColumnName = "ID")
    private Vitamina vitaminaID;
}
