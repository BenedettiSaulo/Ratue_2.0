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
@SequenceGenerator(name = "seq_agencia", sequenceName = "seq_agencia", allocationSize = 1, initialValue = 1)
public class Agencia {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "age_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_agencia")
	private Long codigo;

	@Column(name = "age_nome")
	private String nome;

	@Column(name = "age_fone")
	private String fone;

	@Column(name = "age_ende")
	private String endereco;

	@Column(name = "age_cnpj")
	private String cnpj;

	@Column(name = "age_dt_cria")
	private Date dataCriacao;

}
