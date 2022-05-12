<%-- 
    Document   : consultar_cliente
    Created on : 21/01/2022, 11:51:47
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação JAVA JSP</title>
        <link rel="stylesheet" href="css/style_consultar_cliente.css">
    </head>
    <body>
        <h1>Consultar Cliente!</h1>
        <form action="consultar_cliente.jsp" method="post">
            <label>Pesquisar por nome</label><br>
            <input type="text" name="nome" placeholder="Digite o nome"/><br>
            <input type="submit" value="PESQUISAR"/>
            <a href="index.jsp"><button type="button">VOLTAR</button></a>
        </form><br>
        <%
        out.print("<table>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>TELEFONE</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            DAOCliente dclt = new DAOCliente();
            if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
                ArrayList<Cliente> lista = dclt.ListarCliente();
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getNome_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getTelefone_cliente()+"</td>");
                        out.print("<td><a href='editar_cliente.jsp?id_cliente="
                                + lista.get(i).getId_cliente() + "&nome_cliente="
                                + lista.get(i).getNome_cliente() + "&email_cliente="
                                + lista.get(i).getEmail_cliente() + "&telefone_cliente="
                                + lista.get(i).getTelefone_cliente() + "'>Editar</a></td>");
                        out.print("<td><a href='excluir_cliente.jsp?id_cliente="
                                + lista.get(i).getId_cliente() + "&nome_cliente="
                                + lista.get(i).getNome_cliente() + "&email_cliente="
                                + lista.get(i).getEmail_cliente() + "&telefone_cliente="
                                + lista.get(i).getTelefone_cliente() + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }else{
                ArrayList<Cliente> lista = dclt.ListarClientePorNome(request.getParameter("nome"));
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getNome_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail_cliente()+"</td>");
                        out.print("<td>"+lista.get(i).getTelefone_cliente()+"</td>");
                        out.print("<td><a href='editar_cliente.jsp?id_cliente="
                                + lista.get(i).getId_cliente() + "&nome_cliente="
                                + lista.get(i).getNome_cliente() + "&email_cliente="
                                + lista.get(i).getEmail_cliente() + "&telefone_cliente="
                                + lista.get(i).getTelefone_cliente() + "'>Editar</a></td>");
                        out.print("<td><a href='excluir_cliente.jsp?id_cliente="
                                + lista.get(i).getId_cliente() + "&nome_cliente="
                                + lista.get(i).getNome_cliente() + "&email_cliente="
                                + lista.get(i).getEmail_cliente() + "&telefone_cliente="
                                + lista.get(i).getTelefone_cliente() + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }
        
        
        
        
        
        
        %>
    </body>
</html>
