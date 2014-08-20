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
                $("#ds_dataNas").mask("99/99/9999", {placeholder: " "});
                $("#ds_rg").mask("99.999.999-9", {placeholder: " "});
                $("#ds_cpf").mask("999.999.999-99");
            });
        </script>
    </head>
    <body>

        <jsp:include page="../include/menuSysFly.jsp" />

         <div id="wrap">
        <div class="container">
            
            <div class="page-header">
                    <h3>Cadastro de Cliente</h3>
                </div>
            
            <form class="form-horizontal" action="../rest/cliente" method="POST">

                <fieldset>
             
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_origem">Nome</label>
                        <div class="col-sm-5">
                            <input id="ds_origem" name="nome" type="text" placeholder="Nome do cliente" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_destino">Sexo</label>
                        <div class="col-sm-5">
                            <input id="ds_destino" name="sexo" type="text" placeholder="Sexo do cliente" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_horario">Data nascimento</label>
                        <div class="col-sm-5">
                            <input id="ds_dataNas" name="dataNascimento" type="text" placeholder="Data de nascimento do cliente" class="form-control">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_tempo">RG</label>
                        <div class="col-sm-5">
                            <input id="ds_rg" name="rg" type="text" placeholder="RG do cliente" class="form-control">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_custo">CPF</label>
                        <div class="col-sm-5">
                            <input id="ds_cpf" name="cpf" type="text" placeholder="CPF do cliente" class="form-control">

                        </div>
                    </div>

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                        <div class="col-sm-5">
                            <button Value="Mensagem" onClick="alert('Cliente cadastrado com sucesso !!!')" type="submit" value="Submit" class="btn btn-success">Salvar</button>
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
