package com.recetario.salad.repository;

import com.recetario.salad.models.Ensalada;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Collection;

public interface ensaladasRepository extends CrudRepository<Ensalada, Integer> {
    @Query(value = "select * from ensalada where nombre like %:name%", nativeQuery = true)
    Collection<Ensalada> getEnsaladaByName(@Param("name") String nombre);
}
