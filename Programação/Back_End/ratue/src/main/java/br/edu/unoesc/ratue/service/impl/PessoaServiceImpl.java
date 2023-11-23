package br.edu.unoesc.ratue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.ratue.entidades.Pessoa;
import br.edu.unoesc.ratue.repository.PessoaRepository;
import br.edu.unoesc.ratue.service.PessoaService;

@Service
public class PessoaServiceImpl implements PessoaService {

	@Autowired
	private PessoaRepository pessoaRepository;

	@Override
	public Pessoa salvarPessoa(Pessoa pessoa) {

		return pessoaRepository.save(pessoa);
	}

	@Override
	public void deletarPorCodigo(Long codigo) {

		pessoaRepository.deleteById(codigo);
	}

	@Override
	public Pessoa atualizarPessoa(Pessoa pessoa) {

		return pessoaRepository.saveAndFlush(pessoa);
	}

	@Override
	public List<Pessoa> buscarPorNome(String nome) {

		return pessoaRepository.buscarPorNome(nome.trim().toUpperCase());
	}

	@Override
	public List<Pessoa> buscarTodos() {

		return pessoaRepository.findAll();
	}
}
