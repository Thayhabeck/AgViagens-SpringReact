package com.site.habeckturismo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.site.habeckturismo.entities.Destino;

@Repository
public interface DestinoRepository extends JpaRepository<Destino, Long>{

}
