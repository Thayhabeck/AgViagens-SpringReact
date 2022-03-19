package com.site.habeckturismo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.site.habeckturismo.entities.Regiao;
import com.site.habeckturismo.repositories.RegiaoRepository;

@Service
public class RegiaoService {

	@Autowired
	private RegiaoRepository regiaoRepository;
	

	@Transactional(readOnly = true)
	public ResponseEntity<List<Regiao>> findAll() {
		List<Regiao> regiao = regiaoRepository.findAll();
		return ResponseEntity.ok().body(regiao);
	}


}
