package br.edu.unoesc.ratue.service;

import java.util.List;

import br.edu.unoesc.ratue.entidades.Pessoa;

public interface PessoaService {

	public abstract Pessoa salvarPessoa(Pessoa pessoa);

	public abstract void deletarPorCodigo(Long codigo);

	public abstract Pessoa atualizarPessoa(Pessoa pessoa);

	public abstract List<Pessoa> buscarPorNome(String nome);

	public abstract List<Pessoa> buscarTodos();
}
