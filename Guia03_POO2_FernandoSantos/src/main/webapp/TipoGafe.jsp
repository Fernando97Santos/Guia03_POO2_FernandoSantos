<%-- 
    Document   : TipoGafe
    Created on : 08-24-2016, 11:28:53 PM
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

        <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="menu">
                    <ul>
                        <li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Homepage</a></li>
                        <li><a href="Lugar.jsp" accesskey="1" title="">Lugar Acceso</a></li>
                        <li><a href="TipoDocu.jsp" accesskey="1" title="">Tipo Documento</a></li>
                        <li><a href="TipoGafe.jsp" accesskey="1" title="">Tipo Gafete</a></li>
                    </ul>
                </div>
                <div id="logo">
                    <h1><a href="#">Guia 3 POO2</a></h1>
                    <span>Fernando Santos </span> </div>
            </div>
        </div>

        <div id="wrapper2">
            <div id="newsletter" class="container">
                <div class="title">
                    <h2>Agregar tipo de Gafete</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form method="post" name="frmPers" id="frmPers" action="LugaAcceServ">
                        <div class="row">
                            <input type="hidden" name="CodiTipoGafe" value="${CodiTipoGafe}"/>
                            <div class="text" >
                                <label>Nombre:</label>
                                <input type="text" class="text" id="NombTipoGafe" name="NombTipoGafe" placeholder="Nombre" value="${NombTipoGafe}"/>
                            </div>
                            
                            <div class="column1">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Guardar"/>
                            </div>
                            <div class="column4">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Modificar"/>
                            </div>
                            <div class="column2">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Eliminar" onclick="return confirm('¿Estas seguro que deseas eliminar este registro?');"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
