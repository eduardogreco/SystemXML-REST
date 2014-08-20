/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Cliente;
import br.utfpr.edu.br.model.Quarto;
import br.utfpr.edu.br.model.ReservaQuarto;
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
@Path("/reservaquarto")
public class ReservaQuartoResource {

    @GET
    @Produces("text/xml")
    public List<ReservaQuarto> getReservas() {
        return new ArrayList<ReservaQuarto>(new Dao<ReservaQuarto>(ReservaQuarto.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<ReservaQuarto> getReservaId(@PathParam("id") Long id) {
        return new ArrayList<ReservaQuarto>(new Dao<ReservaQuarto>(ReservaQuarto.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public String adicionarReserva(@FormParam("id_cliente") Long id_cliente,
            @FormParam("id_quarto") Long id_quarto,
            @FormParam("ds_dataReserva") String dataReserva,
            @Context HttpServletResponse servletResponse) throws IOException {

        Cliente cliente = new Dao<Cliente>(Cliente.class).buscaPorId(id_cliente);
        Quarto quarto = new Dao<Quarto>(Quarto.class).buscaPorId(id_quarto);

        ReservaQuarto reserva = new ReservaQuarto();
        reserva.setCliente(cliente);
        reserva.setQuarto(quarto);
        reserva.setDataReserva(dataReserva);

        List validar = new ArrayList<ReservaQuarto>(new Dao<ReservaQuarto>(ReservaQuarto.class).validarReservaQuarto(id_cliente, id_quarto, dataReserva));

       if (validar.isEmpty()) {
            new Dao<ReservaQuarto>(ReservaQuarto.class).adiciona(reserva);
            return "Gravado com sucesso !!!";
       } else {
            return "O quarto já esta reservado para a data selecionada!";
        }

    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaReserva(ReservaQuarto reserva, @PathParam("id") int id) {
        return " atualizada.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public String removeReserva(@PathParam("id") int id) {
        Long id_reserva = Long.valueOf(id);
        new Dao<ReservaQuarto>(ReservaQuarto.class).removePorId(id_reserva);
        return "Reserva removida.";
    }

}
