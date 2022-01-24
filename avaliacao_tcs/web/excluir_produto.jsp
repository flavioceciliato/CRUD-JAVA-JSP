<%-- 
    Document   : excluir_produto
    Created on : 21/01/2022, 18:20:01
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_excluir_produto.css">
    </head>
    <body>
        <h1>Confirme os dados antes de excluir!</h1>
        <a href="consultar_produto.jsp"><button type="button">VOLTAR</button></a>
        <%
        out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>QUANTIDADE</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            out.print("<tr>");
                out.print("<td>"+request.getParameter("id_produto") +"</td>");
                out.print("<td>"+request.getParameter("nome_produto") +"</td>");
                out.print("<td>"+request.getParameter("qtd_produto") +"</td>");
                out.print("<td><a href='executar_excluir_produto.jsp?id_produto="+request.getParameter("id_produto")+"' >Excluir</a></td>");
            
        %>
    </body>
</html>
