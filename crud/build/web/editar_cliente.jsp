<%-- 
    Document   : editar_cliente
    Created on : 21/01/2022, 15:53:14
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente" %>
<%@page import="MODEL.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_editar_cliente.css">
    </head>
    <body>
        <center>
            <h1>Alterar Cliente!</h1>
            <form method="post" action="executar_editar_cliente.jsp">
                <label for="id_cliente"><h3>ID</h3></label>
                <input type="text" name="id_cliente" value="<%=request.getParameter("id_cliente")%>" readonly="readonly"/><br>
                <label for="nome_cliente"><h3>Nome</h3></label>
                <input type="text" name="nome_cliente" value="<%=request.getParameter("nome_cliente")%>"/><br>
                <label for="email_cliente"><h3>Email</h3></label>
                <input type="email" name="email_cliente" value="<%=request.getParameter("email_cliente")%>"/><br>
                <label for="telefone_cliente"><h3>Telefone</h3></label>
                <input type="text" name="telefone_cliente" value="<%=request.getParameter("telefone_cliente")%>"><br><br>
                <input type="submit" value="ALTERAR"/>
                <a href="consultar_cliente.jsp"><button type="button">VOLTAR</button></a>
            </form>
        </center>
    </body>
</html>
