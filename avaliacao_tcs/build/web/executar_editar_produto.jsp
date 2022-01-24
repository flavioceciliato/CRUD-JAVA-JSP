<%-- 
    Document   : executar_editar_produto
    Created on : 21/01/2022, 18:23:29
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
        String nome = request.getParameter("nome_produto");
        int qtd_produto = Integer.parseInt(request.getParameter("qtd_produto"));
        pdt.setId_produto(id_produto);
        pdt.setNome_produto(nome);
        pdt.setQtd_produto(qtd_produto);

        dpdt.EditarProduto(pdt);
    }catch(Exception erro){
        throw new RuntimeException("Erro executar alterar produto: " + erro);
    }

    out.print("<meta http-equiv='refresh' content='1; url=consultar_produto.jsp'>");
    %>