<%-- 
    Document   : executar_excluir_cliente
    Created on : 21/01/2022, 16:15:02
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
        String nome = request.getParameter("nome_cliente");
        String email = request.getParameter("email_cliente");
        String telefone = request.getParameter("telefone_cliente");
        clt.setId_cliente(id_cliente);
        clt.setNome_cliente(nome);
        clt.setEmail_cliente(email);
        clt.setTelefone_cliente(telefone);

        dclt.EditarCliente(clt);
    }catch(Exception erro){
        throw new RuntimeException("Erro executar alterar cliente: " + erro);
    }

    out.print("<meta http-equiv='refresh' content='1; url=consultar_cliente.jsp'>");
    %>