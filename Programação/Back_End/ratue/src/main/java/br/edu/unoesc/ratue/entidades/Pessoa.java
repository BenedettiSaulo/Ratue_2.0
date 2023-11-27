package br.edu.unoesc.ratue.entidades;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

/**
 * @author Saulo Benedetti
 * 
 * Classe pública para a entidade Pessoa
 * 
 * Representa a tabela pessoa
 */
@Data
@Entity
@SequenceGenerator(name = "pessoa_pes_cod_seq", sequenceName = "pessoa_pes_cod_seq", allocationSize = 1, initialValue = 1)
public class Pessoa {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "pes_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pessoa_pes_cod_seq")
	private Long codigo;

	@Column(name = "pes_cpf")
	private String cpf;

	@Column(name = "pes_nome")
	private String nome;

	@Column(name = "pes_dt_nas")
	private Date dataNascimento;

	@Column(name = "pes_fone")
	private String fone;

	@Column(name = "pes_sexo")
	private Character sexo;
}
