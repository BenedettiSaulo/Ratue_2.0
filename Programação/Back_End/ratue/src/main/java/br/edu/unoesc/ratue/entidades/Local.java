package br.edu.unoesc.ratue.entidades;

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

/**
 * @author Saulo Benedetti
 * 
 * Classe pública para a entidade Local
 * 
 * Representa a tabela local
 */
@Entity
@SequenceGenerator(name = "seq_local", sequenceName = "seq_local", allocationSize = 1, initialValue = 1)
public class Local {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "loc_cod")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_local")
	private Long codigo;

	@Column(name = "loc_nom")
	private String nome;

	@Column(name = "cid_cod", insertable = false, updatable = false)
	private Long cidadeCodigo;

	@ManyToOne
	@JoinColumn(name = "cid_cod", referencedColumnName = "cid_cod")
	private Cidade cidade;

	@OneToMany(mappedBy = "local", cascade = CascadeType.ALL)
	private List<Programacao> listaProgramacoes;
}
