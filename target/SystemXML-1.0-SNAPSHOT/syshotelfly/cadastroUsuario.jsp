<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../include/head.jsp" />
    </head>
    <body>

        <jsp:include page="../include/menuSysHotelFly.jsp" />

         <div id="wrap">
        <div class="container">
            
            <div class="page-header">
                    <h3>Cadastro de Usuário</h3>
                </div>
            
            <form class="form-horizontal" action="../rest/usuario" method="POST">

                <fieldset>
             
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_origem">Login</label>
                        <div class="col-sm-5">
                            <input id="ds_login" name="login" type="text" placeholder="Login do usuário" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="ds_destino">Senha</label>
                        <div class="col-sm-5">
                            <input id="ds_senha" name="senha" type="text" placeholder="Senha do usuário" class="form-control">
                        </div>
                    </div>

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="btnSAlvar"></label>
                        <div class="col-sm-5">
                            <button Value="Mensagem" onClick="alert('Usuário cadastrado com sucesso !!!')" type="submit" value="Submit" class="btn btn-success">Salvar</button>
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
