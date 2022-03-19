package com.site.habeckturismo.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "tb_regiao")
public class Regiao implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idRegiao;
	private String nomeRegiao;
	
	@JsonIgnore
	@OneToMany(mappedBy = "regiao")
	private List<Destino> destinos = new ArrayList<Destino>();
	
	public Regiao() {
	}
	
	public Regiao(Long idRegiao, String nomeRegiao) {
		this.idRegiao = idRegiao;
		this.nomeRegiao = nomeRegiao;
	}
	
	public List<Destino> getDestinos() {
		return destinos;
	}

	public Long getIdRegiao() {
		return idRegiao;
	}
	public void setIdRegiao(Long idRegiao) {
		this.idRegiao = idRegiao;
	}
	public String getNomeRegiao() {
		return nomeRegiao;
	}
	public void setNomeRegiao(String nomeRegiao) {
		this.nomeRegiao = nomeRegiao;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idRegiao);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Regiao other = (Regiao) obj;
		return Objects.equals(idRegiao, other.idRegiao);
	}
	
}
