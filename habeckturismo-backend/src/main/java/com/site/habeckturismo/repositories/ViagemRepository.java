package com.site.habeckturismo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.site.habeckturismo.entities.Viagem;

@Repository
public interface ViagemRepository extends JpaRepository<Viagem, Long>{

}
