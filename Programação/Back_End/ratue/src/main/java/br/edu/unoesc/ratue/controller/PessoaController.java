package br.edu.unoesc.ratue.controller;

import static br.edu.unoesc.ratue.constant.StringConstant.PATH_ATUALIZAR_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.PATH_BUSCAR_POR_NOME_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.PATH_BUSCAR_TODOS_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.PATH_DELETAR_PESSOA;
import static br.edu.unoesc.ratue.constant.StringConstant.PATH_SALVAR_PESSOA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.edu.unoesc.ratue.entidades.Pessoa;
import br.edu.unoesc.ratue.service.PessoaService;

/**
 * @author Saulo Benedetti
 * 
 * Classe pública controladora para a entidade Pessoa
 */
@RestController
public class PessoaController {

	@Autowired // Injeção de dependencia da classe PessoaService
	private PessoaService pessoaService;

	@PostMapping(value = PATH_SALVAR_PESSOA)
	@ResponseBody
	public ResponseEntity<String> salvar(@RequestBody Pessoa pessoa) {

		String retorno = pessoaService.salvarPessoa(pessoa);

		return new ResponseEntity<String>(retorno, HttpStatus.CREATED);
	}

	@DeleteMapping(value = PATH_DELETAR_PESSOA)
	@ResponseBody
	public ResponseEntity<String> delete(@RequestParam Long codigo) {

		pessoaService.deletarPorCodigo(codigo);

		return new ResponseEntity<String>("Pessoa excluida com sucesso", HttpStatus.OK);
	}

	@PutMapping(value = PATH_ATUALIZAR_PESSOA)
	@ResponseBody
	public ResponseEntity<String> atualizar(@RequestBody Pessoa pessoa) {

		String retorno = pessoaService.atualizarPessoa(pessoa);

		return new ResponseEntity<String>(retorno, HttpStatus.OK);
	}

	@GetMapping(value = PATH_BUSCAR_POR_NOME_PESSOA)
	@ResponseBody
	public ResponseEntity<List<Pessoa>> bucarpornome(@RequestParam(name = "nome") String nome) {

		List<Pessoa> listaUsuarios = pessoaService.buscarPorNome(nome);

		return new ResponseEntity<List<Pessoa>>(listaUsuarios, HttpStatus.OK);
	}

	@GetMapping(value = PATH_BUSCAR_TODOS_PESSOA)
	@ResponseBody
	public ResponseEntity<List<Pessoa>> bucartodos() {

		List<Pessoa> usuario = pessoaService.buscarTodos();

		return new ResponseEntity<List<Pessoa>>(usuario, HttpStatus.OK);
	}
}
