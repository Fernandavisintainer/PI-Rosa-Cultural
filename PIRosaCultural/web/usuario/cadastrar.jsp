
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <link href="../css/my css.css" rel="stylesheet" type="text/css"/>
        <title>Contato</title>
        <link rel="shortcut icon" href="../imgs/Rosa (2) (1).ico" type="image/x-png"/>
    </head>
    <body>
        <header class="altura container inferior header " id="cabeçalho">
            <hgroup class="text-right">
                <h1 class="superior ">Àrea de Contato</h1>
                <h4>Fale conosco</h4>
            </hgroup>
        </header>
        <%
            String status = request.getParameter("status");
            if (status != null) {
                if (status.equals("OK")) {
                    out.println("Mensagem enviada com sucesso!");
                }
            }
        %>

        <article class="altura fundo">
            <div class="container">
                <div class="row">

                    <div class="col-12 inferior superior " id="margem" >
                        

                        <form name="cadastro" method="post" action="../salvar.jsp">
                            <div class="row">
                                <div class="col-12">
                                    <label>Nome</label>
                                    <input type="text" name="nome" class="form-control"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Endereço</label>
                                    <input type="text" name="endereco"class="form-control"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Telefone</label>
                                    <input type="tel" name="telefone"class="form-control"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Mensagem</label>
                                    <textarea name="mensagem" id="mensagem" class="form-control"></textarea>
                                </div>
                            </div>
                            <br/>
                            <div class="container-fluid">
                               
                                <center> <a href="../salvar.jsp"><input type="submit"  name="enviar" value="Salvar" class="btn btn-success" /></a> </center>
 
                            </div>
                         

                        </form>
                         <a href="../index.jsp">Página Inicial</a>
                    </div>
                </div>
            </div>
        </article>
        
         <footer>
            <div>
         
                    <div class=" col-12 foot">
                        <p>
                            RosaCultural.org.br 
                        </p>
                        <p>&copy; FrontWeb </p>
                    </div>
                </div>
            </div>
        </footer>
        
    </body>
</html>
