package com.site.habeckturismo.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "tb_destino")
public class Destino implements Serializable{
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idDestino;
	private String cidade;
	private String estado;
	private String imagem;
	private Double precoDiaria;
	
	@ManyToOne
	@JoinColumn(name = "RegiaoId")
	private Regiao regiao;
	
	@JsonIgnore
	@Cascade(CascadeType.ALL)
	@OneToMany(mappedBy = "destino", orphanRemoval = true)
	private List<Viagem> viagens = new ArrayList<Viagem>();
	
	public Destino() {
	}

	public Destino(Long idDestino, String cidade, String estado, String imagem, Double precoDiaria, Regiao regiao) {
		this.idDestino = idDestino;
		this.cidade = cidade;
		this.estado = estado;
		this.imagem = imagem;
		this.precoDiaria = precoDiaria;
		this.regiao = regiao;
	}
	
	public List<Viagem> getViagens() {
		return viagens;
	}

	public Long getIdDestino() {
		return idDestino;
	}

	public void setIdDestino(Long idDestino) {
		this.idDestino = idDestino;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public Double getPrecoDiaria() {
		return precoDiaria;
	}

	public void setPrecoDiaria(Double precoDiaria) {
		this.precoDiaria = precoDiaria;
	}

	public Regiao getRegiao() {
		return regiao;
	}

	public void setRegiao(Regiao regiao) {
		this.regiao = regiao;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idDestino);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Destino other = (Destino) obj;
		return Objects.equals(idDestino, other.idDestino);
	}
	
	
	
	

}
