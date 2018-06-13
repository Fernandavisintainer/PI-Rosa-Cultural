<%@page import="persistencia.UsuarioBD"%>
<%@page import="dominio.Usuario"%>

<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String telefone = request.getParameter("telefone");
    String mensagem = request.getParameter("mensagem");

    Usuario usuario = new Usuario(); // método construtor"new Usuario"
    usuario.setNome(nome);
    usuario.setEndereco(endereco);
    usuario.setTelefone(telefone);
    usuario.setMensagem(mensagem);

// a classe de BD UsuarioBD insere
// o objeto usuario np banco de dados
    UsuarioBD.inserir(usuario);
    response.sendRedirect("cadastrar.jsp?status=OK");
%>