<%-- 
    Document   : consultar_produto
    Created on : 21/01/2022, 11:52:20
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_consultar_produto.css">
    </head>
    <body>
        <h1>Consultar Produto!</h1>
        <form action="consultar_produto.jsp" method="post">
            <label>Pesquisar por nome</label><br>
            <input type="text" name="nome" placeholder="Digite o nome"/>
            <input type="submit" value="PESQUISAR"/>
            <a href="index.jsp"><button type="button">VOLTAR</button></a>
        </form><br>
        <%
        out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>QUANTIDADE</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            DAOProduto dpdt = new DAOProduto();
            if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
                ArrayList<Produto> lista = dpdt.ListarProduto();
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId_produto()+"</td>");
                        out.print("<td>"+lista.get(i).getNome_produto()+"</td>");
                        out.print("<td>"+lista.get(i).getQtd_produto()+"</td>");
                        out.print("<td><a href='editar_produto.jsp?id_produto="
                                + lista.get(i).getId_produto()+ "&nome_produto="
                                + lista.get(i).getNome_produto()+ "&qtd_produto="
                                + lista.get(i).getQtd_produto()+ "'>Editar</a></td>");
                        out.print("<td><a href='excluir_produto.jsp?id_produto="
                                + lista.get(i).getId_produto()+ "&nome_produto="
                                + lista.get(i).getNome_produto()+ "&qtd_produto="
                                + lista.get(i).getQtd_produto()+ "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }else{
                ArrayList<Produto> lista = dpdt.ListarProdutoPorNome(request.getParameter("nome"));
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId_produto()+"</td>");
                        out.print("<td>"+lista.get(i).getNome_produto()+"</td>");
                        out.print("<td>"+lista.get(i).getQtd_produto()+"</td>");
                        out.print("<td><a href='editar_produto.jsp?id_produto="
                                + lista.get(i).getId_produto()+ "&nome_produto="
                                + lista.get(i).getNome_produto()+ "&qtd_produto="
                                + lista.get(i).getQtd_produto()+ "'>Editar</a></td>");
                        out.print("<td><a href='excluir_produto.jsp?id_produto="
                                + lista.get(i).getId_produto()+ "&nome_produto="
                                + lista.get(i).getNome_produto()+ "&qtd_produto="
                                + lista.get(i).getQtd_produto()+ "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }


        %>
    </body>
</html>
