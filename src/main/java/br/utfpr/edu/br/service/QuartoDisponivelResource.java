/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.utfpr.edu.br.service;

import br.utfpr.edu.br.conexao.Dao;
import br.utfpr.edu.br.model.ReservaQuarto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author eduardogreco
 */
@Path("/quartodisponivel")
public class QuartoDisponivelResource {

    @POST
    @Produces("text/xml")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public List<ReservaQuarto> adicionarQuarto(@FormParam("dataConsulta") String data,
            @Context HttpServletResponse servletResponse) throws IOException {
        return new ArrayList<ReservaQuarto>(new Dao<ReservaQuarto>(ReservaQuarto.class).consultaDisponivel(data));

    }

}
