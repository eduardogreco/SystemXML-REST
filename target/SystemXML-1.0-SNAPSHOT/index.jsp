<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="include/headIndex.jsp" />
    </head>
    <body>

        <div id="wrap">
            <div class="container">

                <h3>Selecione o sistema que deseja acessar:</h3>

                <p>
                    <a href="syshotel/SysHotel.jsp" class="btn btn-primary btn-lg active" role="button">Hotel Paraíso do Luar</a>
                    <a href="sysfly/SysFly.jsp" class="btn btn-primary btn-lg active" role="button">Companhia área Asas</a>
                    <a href="syshotelfly/SysHotelFly.jsp" class="btn btn-primary btn-lg active" role="button">Hotel - Companhia</a>
                </p>
            </div>
        </div>
        <jsp:include page="include/rodape.jsp" />
        <jsp:include page="include/footIndex.jsp" />
    </body>
</html>
