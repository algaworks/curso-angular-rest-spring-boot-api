package com.example.algamoney.api.dto;

import com.example.algamoney.api.model.Categoria;

import java.math.BigDecimal;

public class LancamentoEstatisticaCategoria {
	
	private Categoria categoria;
	
	private BigDecimal total;

	public LancamentoEstatisticaCategoria(Categoria categoria, BigDecimal total) {
		this.categoria = categoria;
		this.total = total;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}
}
