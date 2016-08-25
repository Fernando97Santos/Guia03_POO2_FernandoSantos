<%-- 
    Document   : LugaAcce
    Created on : 08-24-2016, 05:40:46 PM
    Author     : ferna
--%>


<%@page import="com.sv.udb.controlador.LugaAcceCtrl"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/style.css"/>
        <link href="css/reset.css">
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
                    <h2>Agregar Lugar de acceso</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form method="post" name="frmPers" id="frmPers" action="LugaAcceServ">
                        <div class="row">
                            <input type="hidden" name="CodiLugaAcce" value="${CodiLugaAcce}"/>
                            <div class="text" >
                                <label>Nombre:</label>
                                <input type="text" class="text" id="NombLugaAcce" name="NombLugaAcce" placeholder="Nombre" value="${NombLugaAcce}"/>
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
                            
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="title">
            <h2>Consulta de Lugar</h2>
        </div>
        <form method="POST" name="Frm" action="LugaAcceServ">
            <% request.setAttribute("demoAttr", new LugaAcceCtrl().ConsTodo());%>
            <div  class="tbl-content">
                <display:table id="Lugar" name="demoAttr" class="bordered highlight centered">
                    <display:column property="nombLugaAcce" title="Nombre"sortable="true"/>
                    <display:column property="fechAlta" title="Fecha Alta" sortable="true"/>
                    <display:column property="fechBaja" title="Fecha Baja" sortable="true"/>
                    <display:column title="Codigo" sortable="true">
                        <input type="radio" name="codiLugaAcce" id="${Lugar.codiLugaAcce}" value="${Lugar.codiLugaAcce}"/><label for="${Lugar.codiLugaAcce}"></label>
                    </display:column>
                </display:table>
            </div>   
            <br/>
            <div class="row">
                <input type="submit" class="button submit" name="cursBton" value="Consultar"/>
            </div>
            <br/>
        </form>


        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
