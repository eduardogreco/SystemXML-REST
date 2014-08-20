package br.utfpr.edu.br.model;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Cliente.class)
public abstract class Cliente_ {

	public static volatile SingularAttribute<Cliente, String> sexo;
	public static volatile SingularAttribute<Cliente, String> rg;
	public static volatile SingularAttribute<Cliente, String> cpf;
	public static volatile SingularAttribute<Cliente, String> nome;
	public static volatile SingularAttribute<Cliente, Long> Id;
	public static volatile SingularAttribute<Cliente, String> dtNascimento;

}

