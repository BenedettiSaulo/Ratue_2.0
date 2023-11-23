package br.edu.unoesc.ratue.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.edu.unoesc.ratue.entidades.Pessoa;

@Repository
public interface PessoaRepository extends JpaRepository<Pessoa, Long> {

	@Query(value = "select * from pessoa p where upper(trim(p.pes_nome)) like %?1%")
	List<Pessoa> buscarPorNome(String name);
}
