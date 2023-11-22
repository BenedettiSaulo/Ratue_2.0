package br.edu.unoesc.ratue.entidades;

import java.security.Timestamp;
import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Entity
@SequenceGenerator(name = "seq_evento", sequenceName = "seq_evento", allocationSize = 1, initialValue = 1)
public class Evento {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "eve_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_evento")
	private Long eventoCodigo;

	@Column(name = "eve_nome")
	private String eventoNome;

	@Column(name = "eve_tema")
	private String eventoTema;

	@Column(name = "eve_data")
	private Date eventoData;

	@Column(name = "eve_hora")
	private Timestamp eventoHora;

	@Column(name = "eve_age_cod")
	private String eventoAgenciaCodigo;

	@Column(name = "eve_resumo")
	private String eventoResumo;

	@ManyToOne
	@JoinColumn(name = "eve_age_cod", referencedColumnName = "age_cod")
	private Agencia agencia;

	@OneToMany(mappedBy = "evento", cascade = CascadeType.ALL)
	private List<Inscricao> inscricoes;

	@OneToMany(mappedBy = "evento", cascade = CascadeType.ALL)
	private List<Programacao> listaProgramacoes;
}
