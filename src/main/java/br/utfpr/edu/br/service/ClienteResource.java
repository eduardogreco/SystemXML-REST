/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Cliente;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author eduardogreco
 */
@Path("/cliente")
public class ClienteResource {
 @GET
    @Produces("text/xml")
    public List<Cliente> getClientes() {
        return new ArrayList<Cliente>(new Dao<Cliente>(Cliente.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<Cliente> getClienteId(@PathParam("id") Long id) {
        return new ArrayList<Cliente>(new Dao<Cliente>(Cliente.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public void adicionarCliente(@FormParam("nome") String nome,
            @FormParam("sexo") String sexo,
            @FormParam("dataNascimento") String dataNascimento,
            @FormParam("rg") String rg,
            @FormParam("cpf") String cpf,
            @Context HttpServletResponse servletResponse) throws IOException {
        Cliente cliente = new Cliente();
        cliente.setNome(nome);
        cliente.setSexo(sexo);
        cliente.setDtNascimento(dataNascimento);
        cliente.setRg(rg);
        cliente.setCpf(cpf);

        new Dao<Cliente>(Cliente.class).adiciona(cliente);
    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaCliente(Cliente cliente, @PathParam("id") int id) {
        return cliente.getNome() + " atualizada.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public String removeCliente(@PathParam("id") int id) {
        Long id_cliente = Long.valueOf(id); 
        new Dao<Cliente>(Cliente.class).removePorId(id_cliente);
        return "Cliente removido.";
    }

}
