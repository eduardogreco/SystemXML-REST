package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Quarto;
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
 * @author popovicz
 */
@Path("/quarto")
public class QuartoResource {

    @GET
    @Produces("text/xml")
    public List<Quarto> getQuartos() {
        return new ArrayList<Quarto>(new Dao<Quarto>(Quarto.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<Quarto> getQuartoId(@PathParam("id") Long id) {
        return new ArrayList<Quarto>(new Dao<Quarto>(Quarto.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public void adicionarQuarto(@FormParam("custo") String custo,
            @FormParam("nome") String nome,
            @Context HttpServletResponse servletResponse) throws IOException {
        Quarto quarto = new Quarto();
        quarto.setCusto(custo);
        quarto.setNome(nome);

        new Dao<Quarto>(Quarto.class).adiciona(quarto);
    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaQuarto(Quarto quarto, @PathParam("id") int id) {
        return quarto.getNome() + " atualizado.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public String removeQuarto(@PathParam("id") int id) {
        Long id_quarto = Long.valueOf(id);
        new Dao<Quarto>(Quarto.class).removePorId(id_quarto);
        return "Quarto removido.";
    }

}
