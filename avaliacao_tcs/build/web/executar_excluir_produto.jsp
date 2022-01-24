<%-- 
    Document   : executar_excluir_produto
    Created on : 21/01/2022, 18:28:33
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProduto" %>
<%@page import="MODEL.Produto" %>

<%
    Produto pdt = new Produto();
    DAOProduto dpdt = new DAOProduto();
    try{
        int id_produto = Integer.parseInt(request.getParameter("id_produto"));
        pdt.setId_produto(id_produto);

        dpdt.ExcluirProduto(pdt);
    }catch(Exception erro){
        throw new RuntimeException("Erro executar excluir produto: " + erro);
    }

    out.print("<meta http-equiv='refresh' content='1; url=consultar_produto.jsp'>");
    %>
