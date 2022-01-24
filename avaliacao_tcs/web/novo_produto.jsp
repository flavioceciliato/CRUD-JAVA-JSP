<%-- 
    Document   : novo_produto
    Created on : 21/01/2022, 11:51:55
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_inserir_produto.css">
    </head>
    <body>
        <div>
            <center>
                <form method="post" action="executar_inserir_produto.jsp">
                    <h1>FORMULÁRIO DE CADASTRO DE PRODUTO</h1>
                    <label for="nome"><h3>Nome</h3></label>
                    <input type="text" name="nome"/><br>
                    <label for="qtd_produto"><h3>Quantidade do Produto</h3></label>
                    <input type="text" name="qtd_produto"/><br><br>
                    <input type="submit" value="ENVIAR"/>
                    <a href="index.jsp"><button type="button">VOLTAR</button></a>
                </form>
            </center>
        </div>
    </body>
</html>
