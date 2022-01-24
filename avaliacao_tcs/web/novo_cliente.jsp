<%-- 
    Document   : novo_cliente
    Created on : 21/01/2022, 11:51:30
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_inserir_cliente.css">
    </head>
    <body>
        <div>
            <form method="post" action="executar_inserir_cliente.jsp">
                <h1>FORMULÁRIO DE CADASTRO DE CLIENTE</h1>
                <label for="nome"><h3>Nome</h3></label>
                <input type="text" name="nome"/><br>
                <label for="email"><h3>Email</h3></label>
                <input type="email" name="email"/><br>
                <label for="telefone"><h3>Telefone</h3></label>
                <input type="text" name="telefone"><br><br>
                <input type="submit" value="ENVIAR"/>
                <a href="index.jsp"><button type="button">VOLTAR</button></a>
            </form>
        </div>
    </body>
</html>
