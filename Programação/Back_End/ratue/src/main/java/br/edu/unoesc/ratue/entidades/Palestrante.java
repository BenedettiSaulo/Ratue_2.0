package br.edu.unoesc.ratue.entidades;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * @author Saulo Benedetti
 * 
 * Classe pública para a entidade Palestrante
 * 
 * Representa a tabela palestrante
 */
@Entity
@SequenceGenerator(name = "seq_palestrante", sequenceName = "seq_palestrante", allocationSize = 1, initialValue = 1)
public class Palestrante {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "pal_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_palestrante")
	private Long palestranteCodigo;

	@Column(name = "pal_cpf")
	private String palestranteCpf;

	@Column(name = "pal_nome")
	private String palestranteNome;

	@Column(name = "pal_dt_nasc")
	private Date palestranteDataNascimento;

	@Column(name = "pal_fone")
	private String palestranteFone;

	@Column(name = "pro_cod_atv", insertable = false, updatable = false)
	private Long programacaoCodigoAtividade;

	@ManyToOne
	@JoinColumn(name = "pro_cod_atv", referencedColumnName = "pro_cod_atv")
	private Programacao programacao;
}
