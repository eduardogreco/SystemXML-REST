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
                $("#dataConsulta").mask("99/99/9999", {placeholder: " "});
            });
        </script>
    </head>
    <body>

        <jsp:include page="../include/menuSysHotelFly.jsp" />

        <div id="wrap">
            <div class="container">

                <div class="page-header">
                    <h3>Consultar vôos</h3>
                </div>

                <form class="form-horizontal" action="../rest/voodisponivel" method="POST">

                    <fieldset>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_horario">Data consulta</label>
                            <div class="col-sm-5">
                                <input id="dataConsulta" name="dataConsulta" type="text" placeholder="Data" class="form-control">
                            </div>
                        </div>


                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                            <div class="col-sm-5">
                                <button Value="Mensagem" type="submit" value="Submit" class="btn btn-success">Consultar</button>
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
