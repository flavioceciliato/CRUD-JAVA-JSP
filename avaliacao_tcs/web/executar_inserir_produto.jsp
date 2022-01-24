<%-- 
    Document   : executar_inserir_produto
    Created on : 21/01/2022, 13:01:40
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "MODEL.Produto" %>
<%@page import = "DAO.DAOProduto" %>

<%
    Produto pdt = new Produto();
    DAOProduto dpdt = new DAOProduto();
    
    try{
        String nome = request.getParameter("nome");
        int qtd_produto = Integer.parseInt(request.getParameter("qtd_produto"));
        
        pdt.setNome_produto(nome);
        pdt.setQtd_produto(qtd_produto);
        dpdt.InserirProduto(pdt);

        out.print("<meta http-equiv='refresh' content='1; url=consultar_produto.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro executar inserir produto: " + erro);
    }







%>
