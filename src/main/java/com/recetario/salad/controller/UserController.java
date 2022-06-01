package com.recetario.salad.controller;
/** Models and repository **/
import com.recetario.salad.models.Ensalada;
import com.recetario.salad.models.Usuario;
import com.recetario.salad.repository.usuarioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping(path = "/recetario/usuario/")
public class UserController {
    @Autowired
    private usuarioRepository usuarioRepository;

    @GetMapping(path = "/all")
    public @ResponseBody
    Iterable<Usuario> getAllUsuarios(){
        return usuarioRepository.findAll();
    }

    @GetMapping(path = "/{id_usuario}")
    public @ResponseBody
    Optional<Usuario> getUsuarioById(@PathVariable("id_usuario") int id_user) {
        return usuarioRepository.findById(id_user);
    }

    @PostMapping(path = "/create",
            consumes = "application/json", produces = "application/json")
    public Usuario createUsuario(@RequestBody Usuario newUsuario) {
        return usuarioRepository.save(newUsuario);
    }

    @PutMapping(path = "/update",
            consumes = "application/json", produces = "application/json")
    public Usuario updateUsuario(@RequestBody Usuario updatedUsuario) {
        return usuarioRepository.save(updatedUsuario);
    }

    @DeleteMapping(path = "/delete/{id_usuario}")
    public @ResponseBody
    Iterable<Usuario> deleteUsuarioById(@PathVariable("id_usuario") int id_user) {
        try {
            usuarioRepository.deleteById(id_user); // Intento eliminar
        }
        catch (Exception e) {
            System.out.println(e.getMessage()); // si no puedo hacerlo, entonces haga algo con la exc
        } finally {
            return usuarioRepository.findAll();
        }

    }
}
