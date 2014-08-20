/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Usuario;
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
@Path("/usuario")
public class UsuarioResource {

    @GET
    @Produces("text/xml")
    public List<Usuario> getusuarios() {
        return new ArrayList<Usuario>(new Dao<Usuario>(Usuario.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<Usuario> getUsuarioId(@PathParam("id") Long id) {
        return new ArrayList<Usuario>(new Dao<Usuario>(Usuario.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public void adicionarUsuario(@FormParam("login") String login,
            @FormParam("senha") String senha,
            @Context HttpServletResponse servletResponse) throws IOException {

        Usuario usuario = new Usuario();
        usuario.setLogin(login);
        usuario.setSenha(senha);

        new Dao<Usuario>(Usuario.class).adiciona(usuario);
    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaUsuario(Usuario usuario, @PathParam("id") int id) {
        return " atualizada.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public String removeUsuario(@PathParam("id") int id) {
        Long id_usuario = Long.valueOf(id);
        new Dao<Usuario>(Usuario.class).removePorId(id_usuario);
        return "Usuário removido.";
    }

}
