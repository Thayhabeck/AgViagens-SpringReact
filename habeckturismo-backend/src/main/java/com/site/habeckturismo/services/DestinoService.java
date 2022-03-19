package com.site.habeckturismo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.site.habeckturismo.entities.Destino;
import com.site.habeckturismo.entities.Regiao;
import com.site.habeckturismo.repositories.DestinoRepository;
import com.site.habeckturismo.repositories.RegiaoRepository;



@Service
public class DestinoService {
	
	@Autowired
	private DestinoRepository destinoRepository;
	
	@Autowired
	private RegiaoRepository regiaoRepository;
	
	@Transactional(readOnly = true)
	public Page<Destino> findAll(Pageable pageable) {
		Page<Destino> destino = destinoRepository.findAll(pageable);
		return destino;
	}
	
	@Transactional(readOnly = true)
	public Destino findById(Long id) {
		Destino destino = destinoRepository.findById(id).get();
		return destino;
	}
	
	@Transactional
	public Destino create(Destino destino) {
		return destinoRepository.save(destino);
	}
	
	@Transactional
	public ResponseEntity<Destino> update(@PathVariable Long id, @RequestBody Destino destinoDetails) {
		Destino updateDestino = destinoRepository.findById(id).get();
		Regiao regiao = regiaoRepository.findById(destinoDetails.getRegiao().getIdRegiao()).get();
		
		updateDestino.setCidade(destinoDetails.getCidade());
		updateDestino.setEstado(destinoDetails.getEstado());
		updateDestino.setImagem(destinoDetails.getImagem());
		updateDestino.setPrecoDiaria(destinoDetails.getPrecoDiaria());
		updateDestino.setRegiao(regiao);
		
		destinoRepository.save(updateDestino);
		
		return ResponseEntity.ok(updateDestino);
	}
	
	@Transactional
	public ResponseEntity<HttpStatus> delete(Long id) {

    	Destino destino = destinoRepository.findById(id).get();

    	destinoRepository.delete(destino);

        return new ResponseEntity<>(HttpStatus.NO_CONTENT);

    }

}
