package com.site.habeckturismo.entities;

import java.io.Serializable;
import java.util.Objects;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "tb_viagem")
public class Viagem implements Serializable{
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idViagem;
	private String dataIda;
	private String dataVolta;
	
	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "DestinoId", referencedColumnName = "idDestino")
	private Destino destino;
	
	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "UsuarioId", referencedColumnName = "idUsuario")
	private Usuario usuario;
	
	public Viagem() {
	}
	
	public Viagem(Long idViagem, String dataIda, String dataVolta, Destino destino, Usuario usuario) {
		this.idViagem = idViagem;
		this.dataIda = dataIda;
		this.dataVolta = dataVolta;
		this.destino = destino;
		this.usuario = usuario;
	}

	public Long getIdViagem() {
		return idViagem;
	}

	public void setIdViagem(Long idViagem) {
		this.idViagem = idViagem;
	}

	public String getDataIda() {
		return dataIda;
	}

	public void setDataIda(String dataIda) {
		this.dataIda = dataIda;
	}

	public String getDataVolta() {
		return dataVolta;
	}

	public void setDataVolta(String dataVolta) {
		this.dataVolta = dataVolta;
	}

	public Destino getDestino() {
		return destino;
	}

	public void setDestino(Destino destino) {
		this.destino = destino;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idViagem);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Viagem other = (Viagem) obj;
		return Objects.equals(idViagem, other.idViagem);
	}
	
	
	



	

}
