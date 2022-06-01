package com.recetario.salad.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "listaensaladaproteina")
@Setter
@Getter
public class Listaensaladaproteina {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    @OneToOne
    @JoinColumn(name = "EnsaladaID", referencedColumnName = "ID")
    private Ensalada ensaladaID;
    @OneToOne
    @JoinColumn(name = "ProteinaID", referencedColumnName = "ID")
    private Proteina proteinaID;
}
