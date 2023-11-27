package br.edu.unoesc.ratue.service;

import java.util.List;

import br.edu.unoesc.ratue.entidades.Pessoa;

/**
 * @author Saulo Benedetti
 * 
 * Interface pública PessoaService
 */
public interface PessoaService {

    /**
     * Salva uma pessoa.
     * 
     * @param pessoa A entidade Pessoa a ser salva.
     * @return Uma mensagem indicando se a pessoa foi salva com sucesso.
     */
	public abstract String salvarPessoa(Pessoa pessoa);

    /**
     * Deleta uma pessoa pelo seu código.
     * 
     * @param codigo O código da pessoa do tipo Long
     */
	public abstract void deletarPorCodigo(Long codigo);

    /**
     * Atualiza uma pessoa.
     * 
     * @param pessoa A entidade Pessoa a ser atualizada.
     * @return Uma mensagem indicando se a atualização foi bem sucedida.
     */
	public abstract String atualizarPessoa(Pessoa pessoa);

    /**
     * Busca pessoas por nome.
     * 
     * @param nome O nome da pessoa do tipo String
     * @return Lista de pessoas
     */
	public abstract List<Pessoa> buscarPorNome(String nome);

    /**
     * Busca todas as pessoas.
     * 
     * @return Lista de pessoas
     */
	public abstract List<Pessoa> buscarTodos();
}
