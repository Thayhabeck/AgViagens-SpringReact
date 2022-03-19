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
import org.springframework.web.bind.annotation.RestController;

import com.site.habeckturismo.entities.Viagem;
import com.site.habeckturismo.services.ViagemService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(value = "/viagem")
public class ViagemController {
	
	@Autowired
	ViagemService viagemService;
	
	@GetMapping
	public ResponseEntity<List<Viagem>> findAll() {
		return viagemService.findAll();
	}

	@GetMapping(value = "/{id}")
	public Viagem findById(@PathVariable Long id) {
		return viagemService.findById(id);
	}

	@PostMapping(value = "/create")
	public Viagem create(@RequestBody Viagem viagem) {
		return viagemService.create(viagem);
	}

	@PutMapping("{id}")
	public ResponseEntity<Viagem> update(@PathVariable Long id, @RequestBody Viagem viagemDetails) {
		return viagemService.update(id, viagemDetails);
	}

	@DeleteMapping("{id}")
	public ResponseEntity<HttpStatus> delete(@PathVariable Long id) {

		return viagemService.delete(id);

	}

}
