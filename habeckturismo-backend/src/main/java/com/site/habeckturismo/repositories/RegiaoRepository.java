package com.site.habeckturismo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.site.habeckturismo.entities.Regiao;

@Repository
public interface RegiaoRepository extends JpaRepository<Regiao, Long>{

}
