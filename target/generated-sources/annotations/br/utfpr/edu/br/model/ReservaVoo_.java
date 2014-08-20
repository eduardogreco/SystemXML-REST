package br.utfpr.edu.br.model;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(ReservaVoo.class)
public abstract class ReservaVoo_ {

	public static volatile SingularAttribute<ReservaVoo, String> dataReserva;
	public static volatile SingularAttribute<ReservaVoo, Cliente> cliente;
	public static volatile SingularAttribute<ReservaVoo, Voo> voo;
	public static volatile SingularAttribute<ReservaVoo, Long> Id;

}

