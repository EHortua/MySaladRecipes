package com.recetario.salad.controller;
/** Models and repository **/
import com.recetario.salad.models.*;
import com.recetario.salad.repository.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;


@RestController
@RequestMapping(path = "/recetario/")
public class MainController {

    @Autowired
    private ensaladasRepository ensaladasRepository;

    @Autowired
    private ingredientesRepository ingredientesRepository;

    @Autowired
    private proteinasRepository proteinasRepository;

    @Autowired
    private vitaminasRepository vitaminasRepository;

    /*****   Ensalada   *****/

    @GetMapping(path = "/ensaladas/all")
    public @ResponseBody
    Iterable<Ensalada> getAllEnsaladas(){
        return ensaladasRepository.findAll();
    }

    @GetMapping(path = "/ensaladas/{id_ensalada}")
    public @ResponseBody
    Optional<Ensalada> getEnsaladaById(@PathVariable("id_ensalada") int id_sld) {
        return ensaladasRepository.findById(id_sld);
    }

    @GetMapping(path = "/ensaladas/name/{tipo_ensalada}")
    public @ResponseBody
    Collection<Ensalada> getEnsaladaByName(@PathVariable("tipo_ensalada") String name){
        return ensaladasRepository.getEnsaladaByName(name);
    }

    @PostMapping(path = "/ensaladas/create",
            consumes = "application/json", produces = "application/json")
    public Ensalada createEnsalada(@RequestBody Ensalada newEnsalada) {
        return ensaladasRepository.save(newEnsalada);
    }

    @PutMapping(path = "/ensaladas/update",
            consumes = "application/json", produces = "application/json")
    public Ensalada updateEnsalada(@RequestBody Ensalada updatedEnsalada) {
        return ensaladasRepository.save(updatedEnsalada);
    }

    @DeleteMapping(path = "/ensaladas/delete/{id_ensalada}")
    public @ResponseBody
    Iterable<Ensalada> deleteEnsaladaById(@PathVariable("id_ensalada") int id_sld) {
        try {
            ensaladasRepository.deleteById(id_sld); // Intento eliminar
        }
        catch (Exception e) {
            System.out.println(e.getMessage()); // si no puedo hacerlo, entonces haga algo con la exc
        } finally {
            return ensaladasRepository.findAll();
        }

    }

    /*****   Ingrediente   *****/

    @GetMapping(path = "/ingrediente/all")
    public @ResponseBody
    Iterable<Ingrediente> getAllIngredientes(){
        return ingredientesRepository.findAll();
    }

    @GetMapping(path = "/ingrediente/{id_ingrediente}")
    public @ResponseBody
    Optional<Ingrediente> getIngredienteById(@PathVariable("id_ingrediente") int id_ingrediente) {
        return ingredientesRepository.findById(id_ingrediente);
    }

    @PostMapping(path = "/ingrediente/create",
            consumes = "application/json", produces = "application/json")
    public Ingrediente createIngrediente(@RequestBody Ingrediente newIngrediente) {
        return ingredientesRepository.save(newIngrediente);
    }

    @PutMapping(path = "/ingrediente/update",
            consumes = "application/json", produces = "application/json")
    public Ingrediente updateIngrediente(@RequestBody Ingrediente updatedIngrediente) {
        return ingredientesRepository.save(updatedIngrediente);
    }

    @DeleteMapping(path = "/ingrediente/delete/{id_ingrediente}")
    public @ResponseBody
    Iterable<Ingrediente> deleteIngredienteById(@PathVariable("id_ingrediente") int id_ingrediente) {
        try {
            ingredientesRepository.deleteById(id_ingrediente);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            return ingredientesRepository.findAll();
        }
    }

    /*****   PROTEINA   *****/

    @GetMapping(path = "/proteina/all")
    public @ResponseBody
    Iterable<Proteina> getAllProteina(){
        return proteinasRepository.findAll();
    }

    @GetMapping(path = "/proteina/{id_proteina}")
    public @ResponseBody
    Optional<Proteina> getProteinaById(@PathVariable("id_proteina") int id_proteina) {
        return proteinasRepository.findById(id_proteina);
    }

    @PostMapping(path = "/proteina/create",
            consumes = "application/json", produces = "application/json")
    public Proteina createProteina(@RequestBody Proteina newProteina) {
        return proteinasRepository.save(newProteina);
    }

    @PutMapping(path = "/proteina/update",
            consumes = "application/json", produces = "application/json")
    public Proteina updateProteina(@RequestBody Proteina updatedProteina) {
        return proteinasRepository.save(updatedProteina);
    }

    @DeleteMapping(path = "/proteina/delete/{id_proteina}")
    public @ResponseBody
    Iterable<Proteina> deleteProteinaById(@PathVariable("id_proteina") int id_proteina) {
        try {
            proteinasRepository.deleteById(id_proteina);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            return proteinasRepository.findAll();
        }
    }

    /*****   VITAMINA   *****/

    @GetMapping(path = "/vitamina/all")
    public @ResponseBody
    Iterable<Vitamina> getAllVitamina(){
        return vitaminasRepository.findAll();
    }

    @GetMapping(path = "/vitamina/{id_vitamina}")
    public @ResponseBody
    Optional<Vitamina> getVitaminaaById(@PathVariable("id_vitamina") int id_vitamina) {
        return vitaminasRepository.findById(id_vitamina);
    }

    @PostMapping(path = "/vitamina/create",
            consumes = "application/json", produces = "application/json")
    public Vitamina createVitamina(@RequestBody Vitamina newVitamina) {
        return vitaminasRepository.save(newVitamina);
    }

    @PutMapping(path = "/vitamina/update",
            consumes = "application/json", produces = "application/json")
    public Vitamina updatevitamina(@RequestBody Vitamina updatedVitamina) {
        return vitaminasRepository.save(updatedVitamina);
    }

    @DeleteMapping(path = "/vitamina/delete/{id_vitamina}")
    public @ResponseBody
    Iterable<Vitamina> deleteVitaminaById(@PathVariable("id_vitamina") int id_vitamina) {
        try {
            vitaminasRepository.deleteById(id_vitamina);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            return vitaminasRepository.findAll();
        }
    }

}