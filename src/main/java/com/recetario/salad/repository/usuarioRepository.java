package com.recetario.salad.repository;

import com.recetario.salad.models.Usuario;
import org.springframework.data.repository.CrudRepository;

public interface usuarioRepository extends CrudRepository<Usuario, Integer> {
}
