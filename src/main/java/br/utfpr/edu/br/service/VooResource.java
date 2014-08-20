package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Voo;
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

@Path("/voo")
public class VooResource {

    @GET
    @Produces("text/xml")
    public List<Voo> getVoos() {
        return new ArrayList<Voo>(new Dao<Voo>(Voo.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<Voo> getVooId(@PathParam("id") Long id) {
        return new ArrayList<Voo>(new Dao<Voo>(Voo.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public void adicionarVoo(@FormParam("origem") String origem,
            @FormParam("destino") String destino,
            @FormParam("horario") String horario,
            @FormParam("tempo") String tempo,
            @FormParam("custo") String custo,
            @Context HttpServletResponse servletResponse) throws IOException {
        Voo voo = new Voo();
        voo.setOrigem(origem);
        voo.setDestino(destino);
        voo.setHorario(horario);
        voo.setTempo(tempo);
        voo.setCusto(custo);

        new Dao<Voo>(Voo.class).adiciona(voo);
    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaVoo(Voo voo, @PathParam("id") int id) {
        return voo.getOrigem() + " atualizada.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public void removeVoo(@PathParam("id") int id) {
        Long id_voo = Long.valueOf(id); 
        new Dao<Voo>(Voo.class).removePorId(id_voo);
    }

}
