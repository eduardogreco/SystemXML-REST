      <!-- Fixed navbar -->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Sys Hotel Fly</a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="SysHotelFly.jsp">Início</a></li>
              
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuários<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="cadastroUsuario.jsp">Cadastrar</a></li>
                  <li class="divider"></li>
                  <li><a href="../rest/usuario">Consultar</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Consultar<b class="caret"></b></a>
                <ul class="dropdown-menu">
               <li><a href="consultaVoo.jsp">Vôos</a></li>
                  <li class="divider"></li>
                  <li><a href="consultaQuarto.jsp">Quartos</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reserva<b class="caret"></b></a>
                <ul class="dropdown-menu">
               <li><a href="reservarVoo.jsp">Vôo</a></li>
                  <li class="divider"></li>
                  <li><a href="reservarQuarto.jsp">Quarto</a></li>
                </ul>
              </li>
               <li><a href="../index.jsp">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>