package br.utfpr.edu.br.model;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Voo.class)
public abstract class Voo_ {

	public static volatile SingularAttribute<Voo, String> destino;
	public static volatile SingularAttribute<Voo, String> horario;
	public static volatile SingularAttribute<Voo, String> custo;
	public static volatile SingularAttribute<Voo, String> tempo;
	public static volatile SingularAttribute<Voo, Long> Id;
	public static volatile SingularAttribute<Voo, String> Origem;

}

