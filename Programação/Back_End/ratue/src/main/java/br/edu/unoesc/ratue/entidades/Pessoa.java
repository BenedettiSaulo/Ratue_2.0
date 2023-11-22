package br.edu.unoesc.ratue.entidades;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Entity
@SequenceGenerator(name = "seq_pessoa", sequenceName = "seq_pessoa", allocationSize = 1, initialValue = 1)
public class Pessoa {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "pes_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_pessoa")
	private Long pessoaCodigo;

	@Column(name = "pes_cpf")
	private String pessoaCpf;

	@Column(name = "pes_nome")
	private String pessoaNome;

	@Column(name = "pes_dt_nas")
	private Date pessoaDataNascimento;

	@Column(name = "pes_fone")
	private String pessoaFone;

	@Column(name = "pes_sexo")
	private Character pessoaSexo;
}
