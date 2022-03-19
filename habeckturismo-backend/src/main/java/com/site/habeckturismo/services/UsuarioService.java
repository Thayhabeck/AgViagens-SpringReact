package com.site.habeckturismo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.site.habeckturismo.entities.Usuario;
import com.site.habeckturismo.repositories.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Autowired
	private PasswordEncoder encoder;

	@Transactional(readOnly = true)
	public ResponseEntity<List<Usuario>> findAll() {
		List<Usuario> usuario = usuarioRepository.findAll();
		return ResponseEntity.ok().body(usuario);
	}

	@Transactional(readOnly = true)
	public Usuario findById(Long id) {
		Usuario usuario = usuarioRepository.findById(id).get();
		return usuario;
	}
	
	@Transactional(readOnly = true)
	public Usuario findByLogin(String login) {
		Usuario usuario = usuarioRepository.findByLogin(login).get();
		return usuario;
	}

	@Transactional
	public Usuario create(Usuario usuario) {
		usuario.setSenha(encoder.encode(usuario.getSenha()));
		return usuarioRepository.save(usuario);
	}

	@Transactional
	public ResponseEntity<Usuario> update(Long id, Usuario usuarioDetails) {
		Usuario updateUsuario = usuarioRepository.findById(id).get();

		updateUsuario.setNome(usuarioDetails.getNome());
		updateUsuario.setEmail(usuarioDetails.getEmail());
		updateUsuario.setLogin(usuarioDetails.getLogin());
		updateUsuario.setSenha(encoder.encode(usuarioDetails.getSenha()));

		usuarioRepository.save(updateUsuario);

		return ResponseEntity.ok(updateUsuario);
	}

	@Transactional
	public ResponseEntity<HttpStatus> delete(Long id) {

		Usuario usuario = usuarioRepository.findById(id).get();

		usuarioRepository.delete(usuario);

		return new ResponseEntity<>(HttpStatus.NO_CONTENT);

	}

	@Transactional
	public ResponseEntity<Boolean> auth(String login, String senha) {

		Optional<Usuario> optUsuario = usuarioRepository.findByLogin(login);
		if (optUsuario.isEmpty()) {
			return ResponseEntity.ok().body(false);
		}

		Usuario usuario = optUsuario.get();
		boolean valid = encoder.matches(senha, usuario.getSenha());

		return ResponseEntity.ok().body(valid);
	}

}
