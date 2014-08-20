<%-- 
    Document   : cadastroQuarto
    Created on : 27/07/2014, 16:49:41
    Author     : popovicz
--%>

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
                $("#ds_custo").mask("R$ 999,99", {placeholder: " "});
            });
        </script>
    </head>
    <body>

        <jsp:include page="../include/menuSysHotel.jsp" />

         <div id="wrap">
        <div class="container">
            
            <div class="page-header">
                    <h3>Cadastro de Quarto</h3>
                </div>
            
            <form class="form-horizontal" action="../rest/quarto" method="POST">

                <fieldset>
             
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_nome">Nome</label>
                        <div class="col-sm-5">
                            <input id="ds_nome" name="nome" type="text" placeholder="Nome do quarto" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_custo">Custo</label>
                        <div class="col-sm-5">
                            <input id="ds_custo" name="custo" type="text" placeholder="Valor da diária do quarto" class="form-control">

                        </div>
                    </div>

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                        <div class="col-sm-5">
                            <button Value="Mensagem" onClick="alert('Quarto cadastrado com sucesso !!!')" type="submit"  value="Submit" class="btn btn-success">Salvar</button>                      
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
