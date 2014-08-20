/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.Cliente;
import br.utfpr.edu.br.model.ReservaVoo;
import br.utfpr.edu.br.model.ReservaVoo;
import br.utfpr.edu.br.model.Voo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
@Path("/reservavoo")
public class ReservaVooResource {

    @GET
    @Produces("text/xml")
    public List<ReservaVoo> getReservas() {
        return new ArrayList<ReservaVoo>(new Dao<ReservaVoo>(ReservaVoo.class).listaTodos());
    }

    @Path("{id}")
    @GET
    @Produces("text/xml")
    public List<ReservaVoo> getReservaId(@PathParam("id") Long id) {
        return new ArrayList<ReservaVoo>(new Dao<ReservaVoo>(ReservaVoo.class).listaPorId(id));
    }

    @POST
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public String adicionarReserva(@FormParam("id_cliente") Long id_cliente,
            @FormParam("id_voo") Long id_voo,
            @FormParam("data") String data,
            @Context HttpServletResponse servletResponse) throws IOException {

        Cliente cliente = new Dao<Cliente>(Cliente.class).buscaPorId(id_cliente);
        Voo voo = new Dao<Voo>(Voo.class).buscaPorId(id_voo);

        ReservaVoo reserva = new ReservaVoo();
        reserva.setCliente(cliente);
        reserva.setVoo(voo);
        reserva.setDataReserva(data);

        List validar = new ArrayList<ReservaVoo>(new Dao<ReservaVoo>(ReservaVoo.class).validarReservaVoo(id_cliente, id_voo, data));

        if (validar.isEmpty()) {
            new Dao<ReservaVoo>(ReservaVoo.class).adiciona(reserva);
            return "Gravado com sucesso !!!";
        } else {
           return "Não pode gravar o mesmo vôo e a mesma data para o mesmo cliente !";
        }
    }

    @Path("{id}")
    @PUT
    @Consumes("text/xml")
    @Produces("text/plain")
    public String atualizaReserva(ReservaVoo reserva, @PathParam("id") int id) {
        return " atualizada.";
    }

    @Path("{id}")
    @DELETE
    @Produces("text/plain")
    public String removeReserva(@PathParam("id") int id) {
        Long id_reserva = Long.valueOf(id);
        new Dao<ReservaVoo>(ReservaVoo.class).removePorId(id_reserva);
        return "Reserva removida.";
    }

}
