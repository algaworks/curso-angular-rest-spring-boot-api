package com.example.algamoney.api.repository;

import com.example.algamoney.api.model.Pessoa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PessoaRepository extends JpaRepository<Pessoa, Long> {

    public Page<Pessoa> findByNomeContaining(String nome, Pageable pageable);
    
}
