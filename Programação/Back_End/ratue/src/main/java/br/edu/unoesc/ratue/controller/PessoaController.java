package br.edu.unoesc.ratue.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.edu.unoesc.ratue.entidades.Pessoa;
import br.edu.unoesc.ratue.service.PessoaService;

@RestController
public class PessoaController {

	@Autowired
	private PessoaService pessoaService;

//	@GetMapping("/")
//	public String index() {
//
//		return "Hello, World!";
//	}

	@PostMapping(value = "salvar")
	@ResponseBody
	public ResponseEntity<Pessoa> salvar(@RequestBody Pessoa pessoa) {

		Pessoa pes = pessoaService.salvarPessoa(pessoa);

		return new ResponseEntity<Pessoa>(pes, HttpStatus.CREATED);
	}

	@DeleteMapping(value = "delete")
	@ResponseBody
	public ResponseEntity<String> delete(@RequestParam Long codigoPessoa) {

		pessoaService.deletarPorCodigo(codigoPessoa);

		return new ResponseEntity<String>("Pessoa excluida com sucesso", HttpStatus.OK);
	}

//	@PutMapping(value = "atualizar")
//	@ResponseBody
//	public ResponseEntity<?> atualizar(@RequestBody Pessoa pessoa) {
//
//		if (pessoa.getPessoaCodigo() == null) {
//
//			return new ResponseEntity<String>("Id não informado para atualizar", HttpStatus.OK);
//		}
//
//		Pessoa user = pessoaService.atualizarPessoa(pessoa);
//
//		return new ResponseEntity<Pessoa>(user, HttpStatus.OK);
//	}

	@GetMapping(value = "buscarpornome")
	@ResponseBody
	public ResponseEntity<List<Pessoa>> bucarpornome(@RequestParam(name = "nome") String nome) {

		List<Pessoa> listaUsuarios = pessoaService.buscarPorNome(nome);

		return new ResponseEntity<List<Pessoa>>(listaUsuarios, HttpStatus.OK);
	}

	@GetMapping(value = "buscartodos")
	@ResponseBody
	public ResponseEntity<List<Pessoa>> bucartodos() {

		List<Pessoa> usuario = pessoaService.buscarTodos();

		return new ResponseEntity<List<Pessoa>>(usuario, HttpStatus.OK);
	}
}
