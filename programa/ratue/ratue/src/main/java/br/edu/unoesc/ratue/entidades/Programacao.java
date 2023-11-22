package br.edu.unoesc.ratue.entidades;

import java.security.Timestamp;

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

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Entity
@SequenceGenerator(name = "seq_programacao", sequenceName = "seq_programacao", allocationSize = 1, initialValue = 1)
public class Programacao {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "pro_cod_atv")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_programacao")
	private Long programacaoCodigoAtividade;

	@Column(name = "pro_tipo_atv")
	private String programacaoTipoAtividade;

	@Column(name = "pro_dur")
	private Timestamp programacaoDuracao;

	@ManyToOne
	@JoinColumn(name = "eve_cod", referencedColumnName = "eve_cod", insertable = false, updatable = false)
	private Evento evento;

	@ManyToOne
	@JoinColumn(name = "loc_cod", referencedColumnName = "loc_cod", insertable = false, updatable = false)
	private Local local;
}
