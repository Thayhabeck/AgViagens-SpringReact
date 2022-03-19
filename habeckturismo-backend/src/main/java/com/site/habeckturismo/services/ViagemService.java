package com.site.habeckturismo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.site.habeckturismo.entities.Destino;
import com.site.habeckturismo.entities.Usuario;
import com.site.habeckturismo.entities.Viagem;
import com.site.habeckturismo.repositories.DestinoRepository;
import com.site.habeckturismo.repositories.UsuarioRepository;
import com.site.habeckturismo.repositories.ViagemRepository;



@Service
public class ViagemService {
	
	@Autowired
	private ViagemRepository viagemRepository;
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Autowired
	private DestinoRepository destinoRepository;
	
	
	
	@Transactional(readOnly = true)
	public ResponseEntity<List<Viagem>> findAll() {
		List<Viagem> viagem = viagemRepository.findAll();
		return ResponseEntity.ok().body(viagem);
	}
	
	@Transactional(readOnly = true)
	public Viagem findById(Long id) {
		Viagem viagem = viagemRepository.findById(id).get();
		return viagem;
	}
	
	@Transactional
	public Viagem create(Viagem viagem) {
		return viagemRepository.save(viagem);
	}
	
	@Transactional
	public ResponseEntity<Viagem> update(Long id, Viagem viagemDetails) {
		Viagem updateViagem = viagemRepository.findById(id).get();
		Destino destino = destinoRepository.findById(viagemDetails.getDestino().getIdDestino()).get();
		Usuario usuario = usuarioRepository.findById(viagemDetails.getUsuario().getIdUsuario()).get();
		
		updateViagem.setDataIda(viagemDetails.getDataIda());
		updateViagem.setDataVolta(viagemDetails.getDataVolta());
		updateViagem.setDestino(destino);
		updateViagem.setUsuario(usuario);
		
		viagemRepository.save(updateViagem);
		
		return ResponseEntity.ok(updateViagem);
	}
	
	@Transactional
	public ResponseEntity<HttpStatus> delete(Long id) {

		Viagem viagem = viagemRepository.findById(id).get();

		viagemRepository.delete(viagem);

        return new ResponseEntity<>(HttpStatus.NO_CONTENT);

    }

}
