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
                $("#ds_tempo").mask("99:99", {placeholder: " "});
                $("#ds_horario").mask("99:99", {placeholder: " "});
                $("#ds_custo").mask("R$ 999,99", {placeholder: " "});
            });
        </script>
    </head>
    <body>

        <jsp:include page="../include/menuSysFly.jsp" />

        <div id="wrap">
            <div class="container">

                <div class="page-header">
                    <h3>Cadastro de Vôo</h3>
                </div>

                <form class="form-horizontal" action="../rest/voo" method="POST">

                    <fieldset>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_origem">Origem</label>
                            <div class="col-sm-5">
                                <input id="ds_origem" name="origem" type="text" placeholder="Origem do vôo" class="form-control">
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_destino">Destino</label>
                            <div class="col-sm-5">
                                <input id="ds_destino" name="destino" type="text" placeholder="Destino do vôo" class="form-control">
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_horario">Horário</label>
                            <div class="col-sm-5">
                                <input id="ds_horario" name="horario" type="text" placeholder="Horário do vôo" class="form-control">

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_tempo">Tempo</label>
                            <div class="col-sm-5">
                                <input id="ds_tempo" name="tempo" type="text" placeholder="Tempo do vôo" class="form-control">

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_custo">Custo</label>
                            <div class="col-sm-5">
                                <input id="ds_custo" name="custo" type="text" placeholder="Valor do vôo" class="form-control">

                            </div>
                        </div>

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                            <div class="col-sm-5">
                                <button Value="Mensagem" onClick="alert('Vôo cadastrado com sucesso !!!')" type="submit" value="Submit" class="btn btn-success">Salvar</button>
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
