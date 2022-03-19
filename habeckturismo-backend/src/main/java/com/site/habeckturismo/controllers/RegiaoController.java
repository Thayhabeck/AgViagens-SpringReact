package com.site.habeckturismo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.site.habeckturismo.entities.Regiao;
import com.site.habeckturismo.services.RegiaoService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(value = "/regiao")
public class RegiaoController {
	
	@Autowired
	RegiaoService regiaoService;
	
	@GetMapping
	public ResponseEntity<List<Regiao>> findAll() {
		return regiaoService.findAll();
	}

}
