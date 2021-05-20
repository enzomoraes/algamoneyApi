package com.example.algamoneyapi.dto;

import java.math.BigDecimal;

import com.example.algamoneyapi.model.Categoria;

public class LancamentoEstatisticaCategoria {

	private Categoria categoria;
	private BigDecimal total;
	
	public LancamentoEstatisticaCategoria(Categoria categoria, BigDecimal total) {
		super();
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
