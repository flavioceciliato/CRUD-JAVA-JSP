<%-- 
    Document   : excluir_cliente
    Created on : 21/01/2022, 13:40:55
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente" %>
<%@page import="MODEL.Cliente" %>
    <%
    Cliente clt = new Cliente();
    DAOCliente dclt = new DAOCliente();
    try{
        int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));
        clt.setId_cliente(id_cliente);

        dclt.ExcluirCliente(clt);
    }catch(Exception erro){
        throw new RuntimeException("Erro executar excluir cliente: " + erro);
    }

    out.print("<meta http-equiv='refresh' content='1; url=consultar_cliente.jsp'>");
    %>

