package com.site.habeckturismo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.site.habeckturismo.entities.Usuario;
import com.site.habeckturismo.services.UsuarioService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(value = "/usuario")
public class UsuarioController {
	
	@Autowired
	UsuarioService usuarioService;
	
	@GetMapping
	public ResponseEntity<List<Usuario>> findAll() {
		return usuarioService.findAll();
	}

	@GetMapping(value = "/{id}")
	public Usuario findById(@PathVariable Long id) {
		return usuarioService.findById(id);
	}
	
	@GetMapping(value = "/login/{login}")
	public Usuario findByLogin(@PathVariable String login) {
		return usuarioService.findByLogin(login);
	}

	@PostMapping(value = "/create")
	public Usuario create(@RequestBody Usuario usuario) {
		return usuarioService.create(usuario);
	}

	@PutMapping("{id}")
	public ResponseEntity<Usuario> update(@PathVariable Long id, @RequestBody Usuario usuarioDetails) {
		return usuarioService.update(id, usuarioDetails);
	}

	@DeleteMapping("{id}")
	public ResponseEntity<HttpStatus> delete(@PathVariable Long id) {

		return usuarioService.delete(id);

	}

	@GetMapping(value = "/auth")
	public ResponseEntity<Boolean> auth(@RequestParam String login, @RequestParam String senha) {

		return usuarioService.auth(login, senha);
	}

}
