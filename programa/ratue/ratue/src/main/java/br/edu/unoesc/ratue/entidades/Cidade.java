package br.edu.unoesc.ratue.entidades;

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
@SequenceGenerator(name = "seq_cidade", sequenceName = "seq_cidade", allocationSize = 1, initialValue = 1)
public class Cidade {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "cid_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_cidade")
	private Long cidadeCodigo;

	@Column(name = "cid_cep")
	private String cidadeCep;

	@Column(name = "cid_nome")
	private String cidadeNome;

	@Column(name = "cid_uf")
	private String cidadeUf;
}
