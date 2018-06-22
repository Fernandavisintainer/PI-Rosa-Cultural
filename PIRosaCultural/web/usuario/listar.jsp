<%@page import="persistencia.UsuarioBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Usuario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/my css.css" rel="stylesheet" type="text/css"/>
        <title>Listagem dos contatos</title>
    </head>
    <body>
          <h1>Lista de Usuarios!</h1>
        <a href="cadastrar.jsp">Cadastrar Usuario</a>
        <%
        ArrayList<Usuario> lista = UsuarioBD.listar();
        %>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Links</th>
                </tr>
            </thead>
            <tbody>
                    <%
                   for ( int i=0; i <lista.size(); i++ ) {
                       Usuario cadaUsuario = lista.get(i);
                    %>
                <tr>
                    <td><%=cadaUsuario.getCodigo()%></td>
                    <td><%=cadaUsuario.getNome()%></td>
                    <td>
                        <a href="excluir.jsp?codigo=<%=cadaUsuario.getCodigo()%>">Excluir</a>
                    </td>                   
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
