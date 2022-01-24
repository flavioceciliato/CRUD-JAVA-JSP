<%-- 
    Document   : editar_produto
    Created on : 21/01/2022, 18:19:52
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProduto" %>
<%@page import="MODEL.Produto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_editar_produto.css">
    </head>
    <body>
        <center>
            <h1>Alterar Produto!</h1>
            <form method="post" action="executar_editar_produto.jsp">
                <label for="id_produto"><h3>ID</h3></label>
                <input type="text" name="id_produto" value="<%=request.getParameter("id_produto")%>" readonly="readonly"/><br>
                <label for="nome_produto"><h3>Nome</h3></label>
                <input type="text" name="nome_produto" value="<%=request.getParameter("nome_produto")%>"/><br>
                <label for="qtd_produto"><h3>Quantidade</h3></label>
                <input type="text" name="qtd_produto" value="<%=request.getParameter("qtd_produto")%>"/><br>
                <input type="submit" value="ALTERAR"/>
                <a href="consultar_produto.jsp"><button type="button">VOLTAR</button></a>
            </form>
        </center>
    </body>
</html>
