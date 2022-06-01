package com.recetario.salad.repository;

import com.recetario.salad.models.Ingrediente;
import org.springframework.data.repository.CrudRepository;

public interface ingredientesRepository extends CrudRepository<Ingrediente, Integer> {
}
