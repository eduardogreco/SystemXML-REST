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
            <a class="navbar-brand" href="#">Hotel Company</a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="SysHotel.jsp">In�cio</a></li>
              
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Quartos<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="cadastroQuarto.jsp">Cadastrar</a></li>
                  <li class="divider"></li>
                  <li><a href="../rest/quarto">Consultar</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cliente<b class="caret"></b></a>
                <ul class="dropdown-menu">
               <li><a href="cadastroCliente.jsp">Cadastrar</a></li>
                  <li class="divider"></li>
                  <li><a href="../rest/cliente">Consultar</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reserva<b class="caret"></b></a>
                <ul class="dropdown-menu">
               <li><a href="cadastroReserva.jsp">Cadastrar</a></li>
                  <li class="divider"></li>
                  <li><a href="../rest/reservaquarto">Consultar</a></li>
                </ul>
              </li>
              <li><a href="../index.jsp">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>