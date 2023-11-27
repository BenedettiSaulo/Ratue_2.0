package br.edu.unoesc.ratue.service.impl;

import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_ERRO_AO_ATUALIZAR_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_ERRO_AO_BUSCAR_PESSOA_POR_NOME;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_ERRO_AO_BUSCAR_TODAS_AS_PESSOAS;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_ERRO_AO_SALVAR_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_ERRO_CODIGO_DA_PESSOA_NAO_INFORMADO;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_PESSOA_ATUALIZADA_COM_SUCESSO;
import static br.edu.unoesc.ratue.constant.StringConstant.MENSAGEM_PESSOA_SALVA_COM_SUCESSO;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.ratue.entidades.Pessoa;
import br.edu.unoesc.ratue.repository.PessoaRepository;
import br.edu.unoesc.ratue.service.PessoaService;

/**
 * Implementação da interface PessoaService para manipulação de entidades Pessoa.
 * Esta classe fornece operações para salvar, atualizar, deletar e buscar pessoas.
 * 
 * @author Saulo Benedetti
 */

@Service
public class PessoaServiceImpl implements PessoaService {

	@Autowired // Injeção de dependencia do repositório da entidade Pessoa
	private PessoaRepository pessoaRepository;

	/**
	 * Método público que serve para salvar uma pessoa
	 * 
	 * @param pessoa A entidade Pessoa a ser salva.
	 * @return Uma mensagem indicando se a pessoa foi salva com sucesso.
	 */
	@Override
	public String salvarPessoa(Pessoa pessoa) {

		try {

			pessoaRepository.save(pessoa);

			System.out.println(MENSAGEM_PESSOA_SALVA_COM_SUCESSO);

			return MENSAGEM_PESSOA_SALVA_COM_SUCESSO;

		} catch (Exception e) {

			System.out.println(MENSAGEM_ERRO_AO_SALVAR_PESSOA);

			return MENSAGEM_ERRO_AO_SALVAR_PESSOA;
		}
	}

	/**
	 * Método público que serve para deletar uma pessoa pelo seu código
	 * 
	 * @param codigo Recebe o código da pessoa do tipo Long
	 */
	@Override
	public void deletarPorCodigo(Long codigo) {

		pessoaRepository.deleteById(codigo);
	}

	/**
	 * Método público que serve para atualizar uma pessoa
	 * 
	 * @param pessoa A entidade Pessoa a ser atualizada.
	 * @return Uma mensagem indicando se a atualização foi bem-sucedida.
	 */
	@Override
	public String atualizarPessoa(Pessoa pessoa) {

		if (pessoa.getCodigo() == null) {

			logarMensagem(MENSAGEM_ERRO_CODIGO_DA_PESSOA_NAO_INFORMADO);

			return MENSAGEM_ERRO_CODIGO_DA_PESSOA_NAO_INFORMADO;
		}

		try {

			pessoaRepository.saveAndFlush(pessoa);

			logarMensagem(MENSAGEM_PESSOA_ATUALIZADA_COM_SUCESSO);

			return MENSAGEM_PESSOA_ATUALIZADA_COM_SUCESSO;

		} catch (Exception e) {

			logarMensagem(MENSAGEM_ERRO_AO_ATUALIZAR_PESSOA);

			return MENSAGEM_ERRO_AO_ATUALIZAR_PESSOA;
		}
	}

	/**
	 * Método público que serve para buscar pessoas por nome
	 * 
	 * @param nome Recebe o nome da pessoa do tipo String
	 * @return List<String> listaPessoas
	 */
	@Override
	public List<Pessoa> buscarPorNome(String nome) {

		try {

			return pessoaRepository.buscarPorNome(nome.trim().toUpperCase());

		} catch (Exception e) {

			logarMensagem(MENSAGEM_ERRO_AO_BUSCAR_PESSOA_POR_NOME);

			return Arrays.asList(new Pessoa());
		}
	}

	/**
	 * Método público que serve para buscar todas as pessoas
	 * 
	 * @return Lista de pessoas
	 */
	@Override
	public List<Pessoa> buscarTodos() {

		try {

			return pessoaRepository.findAll();

		} catch (Exception e) {

			logarMensagem(MENSAGEM_ERRO_AO_BUSCAR_TODAS_AS_PESSOAS);

			return Arrays.asList(new Pessoa());
		}
	}

	/**
	 * Método privado que serve para logar as mensagens no console
	 * 
	 * @param mensagem Recebe a mensagem que vai ser logada do tipo String
	 */
	private void logarMensagem(String mensagem) {

		System.out.println(mensagem);
	}
}
