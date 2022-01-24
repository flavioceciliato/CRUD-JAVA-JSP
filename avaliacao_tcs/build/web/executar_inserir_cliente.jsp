<%-- 
    Document   : inserir_cliente
    Created on : 21/01/2022, 12:29:59
    Author     : flavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "MODEL.Cliente" %>
<%@page import = "DAO.DAOCliente" %>

<%
    Cliente clt = new Cliente();
    DAOCliente dclt = new DAOCliente();
    
    try{
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        
        clt.setNome_cliente(nome);
        clt.setEmail_cliente(email);
        clt.setTelefone_cliente(telefone);
        dclt.InserirCliente(clt);

        out.print("<meta http-equiv='refresh' content='1; url=consultar_cliente.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro executar inserir cliente: " + erro);
    }






%>