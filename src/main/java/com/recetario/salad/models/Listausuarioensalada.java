package com.recetario.salad.models;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "listausuarioensalada")
@Setter
@Getter
public class Listausuarioensalada {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    @OneToOne
    @JoinColumn(name = "UsuarioID", referencedColumnName = "ID")
    private Usuario usuarioID;
    @OneToOne
    @JoinColumn(name = "EnsaladaID", referencedColumnName = "ID")
    private Ensalada ensaladaID;
}
