package DAO;

/**
 *
 * @author flavi
 */
import MODEL.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOCliente {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();
    
    public DAOCliente(){
        conn = new Conexao().getConexao();
    }
    
    public void InserirCliente(Cliente cliente){
        String sql = "INSERT INTO tb_cliente(nome_cliente, email_cliente, telefone_cliente) VALUES (?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getEmail_cliente());
            stmt.setString(3, cliente.getTelefone_cliente());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro inserir cliente: " + erro);
        }
    }
    
    public ArrayList<Cliente> ListarCliente(){
        String sql = "SELECT * FROM tb_cliente";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setEmail_cliente(rs.getString("email_cliente"));
                cliente.setTelefone_cliente(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar todos os clientes: " + erro);
        }
        return lista;
    }
    
    public ArrayList<Cliente> ListarClientePorNome(String nome){
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%"+nome+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setEmail_cliente(rs.getString("email_cliente"));
                cliente.setTelefone_cliente(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar cliente por nome: " + erro);
        }
        return lista;
    }
    
    public void ExcluirCliente(Cliente cliente){
        String sql = "DELETE FROM tb_cliente WHERE id_cliente = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, cliente.getId_cliente());
            
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro excluir cliente: " + erro);
        }
    }
    
    public void EditarCliente(Cliente cliente){
        String sql = "UPDATE tb_cliente set nome_cliente = ?, email_cliente = ?, telefone_cliente = ? WHERE id_cliente = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getEmail_cliente());
            stmt.setString(3, cliente.getTelefone_cliente());
            stmt.setInt(4, cliente.getId_cliente());
            
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro editar cliente: " + erro);
        }
    }
    
    
}
