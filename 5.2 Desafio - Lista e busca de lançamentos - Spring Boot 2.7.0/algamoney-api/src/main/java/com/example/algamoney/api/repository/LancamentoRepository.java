package com.example.algamoney.api.repository;

import com.example.algamoney.api.model.Lancamento;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LancamentoRepository extends JpaRepository<Lancamento, Long> {
    
}
