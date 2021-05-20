package com.example.algamoneyapi.service;

import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.example.algamoneyapi.model.Pessoa;
import com.example.algamoneyapi.repository.PessoaRepository;

@Service
public class PessoaService {
	
	@Autowired
	private PessoaRepository pessoaRepository;

	public Pessoa atualizar(Long codigo, Pessoa pessoa) {
		
		Optional<Pessoa> pessoaSalva = buscarPessoaPeloCodigo(codigo);
		
		pessoaSalva.get().getContatos().clear();
		pessoaSalva.get().getContatos().addAll(pessoa.getContatos());
		pessoaSalva.get().getContatos().forEach(c -> c.setPessoa(pessoaSalva.get()));
		
		BeanUtils.copyProperties(pessoa, pessoaSalva.get(), "codigo", "contatos");
		
		return pessoaRepository.save(pessoaSalva.get());
		
	}

	public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo) {
		
		Optional<Pessoa> pessoaSalva = buscarPessoaPeloCodigo(codigo);
		pessoaSalva.get().setAtivo(ativo);
		pessoaRepository.save(pessoaSalva.get());
		
	}
	
	public Optional<Pessoa> buscarPessoaPeloCodigo(Long codigo) {
		Optional<Pessoa> pessoaSalva = pessoaRepository.findById(codigo);
		
		if (pessoaSalva.isEmpty()) {
			throw new EmptyResultDataAccessException(1);
		}
		return pessoaSalva;
	}

	public Pessoa criar(Pessoa pessoa) {
		pessoa.getContatos().forEach(c -> c.setPessoa(pessoa));
		return pessoaRepository.save(pessoa);
		
	}
	
}
