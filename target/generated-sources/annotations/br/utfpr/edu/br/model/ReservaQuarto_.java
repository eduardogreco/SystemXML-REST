package br.utfpr.edu.br.model;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(ReservaQuarto.class)
public abstract class ReservaQuarto_ {

	public static volatile SingularAttribute<ReservaQuarto, String> dataReserva;
	public static volatile SingularAttribute<ReservaQuarto, Quarto> quarto;
	public static volatile SingularAttribute<ReservaQuarto, Cliente> cliente;
	public static volatile SingularAttribute<ReservaQuarto, Long> Id;

}

