<%-- 
    Document   : salvar
    Created on : 25/05/2018, 23:24:11
    Author     : fevis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/notify.min.js" type="text/javascript"></script>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <link href="css/my css.css" rel="stylesheet" type="text/css"/>
        <title>Obrigado por seu contato!</title>
    </head>
    <body>
        <%
           String nome = request.getParameter("nome");
           String datanascimento = request.getParameter("datanascimento");
           String cpf = request.getParameter("cpf");        
        %>
        <header class="altura container inferior" id="cabeçalho">
            <hgroup class="text-right">
                <h1 class="superior ">Olá, <%=nome%> sua mensagem foi enviada com sucesso!</h1>

            </hgroup>
        </header>

    </body>
</html>
