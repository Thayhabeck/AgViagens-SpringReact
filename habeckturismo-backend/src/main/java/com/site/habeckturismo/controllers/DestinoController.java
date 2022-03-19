package com.site.habeckturismo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

import com.site.habeckturismo.entities.Destino;
import com.site.habeckturismo.services.DestinoService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(value = "/destino")
public class DestinoController {
	
	@Autowired
	DestinoService destinoService;
	
	@GetMapping
	public Page<Destino> findAll(Pageable pageable) {
		return destinoService.findAll(pageable);
	}

	@GetMapping(value = "/{id}")
	public Destino findById(@PathVariable Long id) {
		return destinoService.findById(id);
	}

	@PostMapping(value = "/create")
	public Destino create(@RequestBody Destino destino) {
		return destinoService.create(destino);
	}

	@PutMapping("{id}")
	public ResponseEntity<Destino> update(@PathVariable Long id, @RequestBody Destino destinoDetails) {
		return destinoService.update(id, destinoDetails);
	}

	@DeleteMapping("{id}")
	public ResponseEntity<HttpStatus> delete(@PathVariable Long id) {

		return destinoService.delete(id);

	}

}
