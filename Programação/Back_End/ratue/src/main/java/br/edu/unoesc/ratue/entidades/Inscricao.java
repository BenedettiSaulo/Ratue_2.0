package br.edu.unoesc.ratue.entidades;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
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
@SequenceGenerator(name = "seq_inscricao", sequenceName = "seq_inscricao", allocationSize = 1, initialValue = 1)
public class Inscricao {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private InscricaoId id;

	@Column(name = "par_sts_pag")
	private String participanteStatusPagamento;

	@Column(name = "par_tipo_pag")
	private String participanteTipoPagamento;

	@Column(name = "par_vlr_ing")
	private Double participanteValorIngresso;

}

@Embeddable
class InscricaoId implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "pes_cod")
	private Long pessoaCodigo;

	@Column(name = "eve_cod")
	private Long eventoCodigo;

	@ManyToOne
	@JoinColumn(name = "pes_cod", referencedColumnName = "pes_cod")
	private Pessoa pessoa;

	@ManyToOne
	@JoinColumn(name = "eve_cod", referencedColumnName = "eve_cod")
	private Evento evento;
}
