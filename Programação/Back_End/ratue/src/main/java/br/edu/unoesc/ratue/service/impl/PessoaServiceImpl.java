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

@Service
public class PessoaServiceImpl implements PessoaService {

	@Autowired
	private PessoaRepository pessoaRepository;

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

	@Override
	public void deletarPorCodigo(Long codigo) {

		pessoaRepository.deleteById(codigo);
	}

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

	@Override
	public List<Pessoa> buscarPorNome(String nome) {

		try {

			return pessoaRepository.buscarPorNome(nome.trim().toUpperCase());

		} catch (Exception e) {

			logarMensagem(MENSAGEM_ERRO_AO_BUSCAR_PESSOA_POR_NOME);

			return Arrays.asList(new Pessoa());
		}
	}

	@Override
	public List<Pessoa> buscarTodos() {

		try {

			return pessoaRepository.findAll();

		} catch (Exception e) {

			logarMensagem(MENSAGEM_ERRO_AO_BUSCAR_TODAS_AS_PESSOAS);

			return Arrays.asList(new Pessoa());
		}
	}

	private void logarMensagem(String mensagem) {

		System.out.println(mensagem);
	}
}
