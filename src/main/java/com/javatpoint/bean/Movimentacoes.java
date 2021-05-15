package com.javatpoint.bean;

public class Movimentacoes {
	private int id_movimentacao;
	private String tipo_movimentacao,data_inicio,data_fim,numero_container;
	
	public int getId_movimentacao() {
		return id_movimentacao;
	}
	public void setId_movimentacao(int id_movimentacao) {
		this.id_movimentacao = id_movimentacao;
	}	
	public String getTipo_movimentacao() {
		return tipo_movimentacao;
	}
	public void setTipo_movimentacao(String tipo_movimentacao) {
		this.tipo_movimentacao = tipo_movimentacao;
	}
	public String getData_inicio() {
		return data_inicio;
	}
	public void setData_inicio(String data_inicio) {
		this.data_inicio = data_inicio;
	}
	public String getData_fim() {
		return data_fim;
	}
	public void setData_fim(String data_fim) {
		this.data_fim = data_fim;
	}
	public String getNumero_container() {
		return numero_container;
	}
	public void setNumero_container(String numero_container) {
		this.numero_container = numero_container;
	}
	
	}