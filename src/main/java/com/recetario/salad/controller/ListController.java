package com.recetario.salad.controller;
/** Models and repository **/
import com.recetario.salad.models.*;
import com.recetario.salad.repository.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import java.util.Optional;

@RestController
@RequestMapping(path = "/recetario/lista/")
public class ListController {
    @Autowired
    private listaensaladaingredienteRepository listaensaladaingredienteRepository;

    @Autowired
    private listaensaladaproteinaRepository listaensaladaproteinaRepository;

    @Autowired
    private listaingredientevitaminaRepository listaingredientevitaminaRepository;

    @Autowired
    private listausuarioensaladaRepository listausuarioensaladaRepository;

    /*****   EnsaladaIngrediente   *****/

    @GetMapping(path = "/ensaladaingrediente/all")
    public @ResponseBody
    Iterable<Listaensaladaingrediente> getAllEnsaladaIngrediente(){
        return listaensaladaingredienteRepository.findAll();
    }

    /*****   EnsaladaProteina   *****/

    @GetMapping(path = "/ensaladaproteina/all")
    public @ResponseBody
    Iterable<Listaensaladaproteina> getAllEnsaladaProteina(){
        return listaensaladaproteinaRepository.findAll();
    }

    /*****   IngredienteVitamina   *****/

    @GetMapping(path = "/ingredientevitamina/all")
    public @ResponseBody
    Iterable<Listaingredientevitamina> getAllIngredienteVitamina(){
        return listaingredientevitaminaRepository.findAll();
    }

    /*****   UsuarioEnsalada   *****/

    @GetMapping(path = "/usuarioensalada/all")
    public @ResponseBody
    Iterable<Listausuarioensalada> getAllUsuarioEnsalada(){
        return listausuarioensaladaRepository.findAll();
    }
}
