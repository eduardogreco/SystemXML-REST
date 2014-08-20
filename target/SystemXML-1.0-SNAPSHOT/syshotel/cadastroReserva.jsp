<%@page import="br.utfpr.edu.br.model.Quarto"%>
<%@page import="br.utfpr.edu.br.conexao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="br.utfpr.edu.br.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../include/head.jsp" />
        <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="../js/jquery.maskedinput.js" type="text/javascript"></script>
        <script>
            jQuery(function($) {
                $("#ds_dataReserva").mask("99/99/9999", {placeholder: " "});
            });
        </script>
    </head>
    <body>

        <jsp:include page="../include/menuSysHotel.jsp" />

        <div id="wrap">
            <div class="container">

                <div class="page-header">
                    <h3>Cadastro de Reserva</h3>
                </div>

                <form class="form-horizontal" action="../rest/reservaquarto" method="POST">

                    <fieldset>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_horario">Cliente</label>
                            <div class="col-sm-5">
                                <select class="form-control" name="id_cliente">  
                                    <%
                                        List<Cliente> list = new Dao<Cliente>(Cliente.class).listaTodos();
                                        Cliente cid;
                                        for (Object obj : list) {
                                            cid = (Cliente) obj;
                                            out.println("<option value=" + cid.getId() + ">" + cid.getNome() + "</option>");
                                        }
                                    %>   
                                </select> 
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_horario">Quarto</label>
                            <div class="col-sm-5">
                                <select class="form-control " name="id_quarto">  
                                    <%
                                        List<Quarto> list1 = new Dao<Quarto>(Quarto.class).listaTodos();
                                        Quarto quarto;
                                        for (Object obj : list1) {
                                            quarto = (Quarto) obj;
                                            out.println("<option value=" + quarto.getId() + ">" + quarto.getNome() + "</option>");
                                        }
                                    %>   
                                </select> 
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_horario">Data reserva</label>
                            <div class="col-sm-5">
                                <input id="ds_dataReserva" name="ds_dataReserva" type="text" placeholder="Data da reserva" class="form-control">
                            </div>
                        </div>


                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                            <div class="col-sm-5">
                                <button Value="Mensagem" type="submit" value="Submit" class="btn btn-success">Salvar</button>
                                <button id="btnCancelar" name="btnCancelar" class="btn btn-danger">Cancelar</button>
                            </div>
                        </div>

                    </fieldset>
                </form>

            </div>
        </div>
        <jsp:include page="../include/rodape.jsp" />
        <jsp:include page="../include/foot.jsp" />
    </body>
</html>
