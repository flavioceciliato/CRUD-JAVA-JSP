<%-- 
    Document   : excluir_cliente
    Created on : 21/01/2022, 16:59:51
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_excluir_cliente.css">
    </head>
    <body>
        <h1>Confirme os dados antes de excluir!</h1>
        <a href="consultar_cliente.jsp"><button type="button">VOLTAR</button></a>
        <%
        out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>TELEFONE</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            out.print("<tr>");
                out.print("<td>"+request.getParameter("id_cliente") +"</td>");
                out.print("<td>"+request.getParameter("nome_cliente") +"</td>");
                out.print("<td>"+request.getParameter("email_cliente") +"</td>");
                out.print("<td>"+request.getParameter("telefone_cliente") +"</td>");
                out.print("<td><a href='executar_excluir_cliente.jsp?id_cliente="+request.getParameter("id_cliente")+"' >Excluir</a></td>");
            
        %>
    </body>
</html>
