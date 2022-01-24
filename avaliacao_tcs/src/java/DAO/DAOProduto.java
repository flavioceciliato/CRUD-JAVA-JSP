package DAO;

/**
 *
 * @author flavi
 */
import MODEL.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOProduto {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public DAOProduto(){
        conn = new Conexao().getConexao();
    }
    
    public void InserirProduto(Produto produto){
        String sql = "INSERT INTO tb_produto(nome_produto,qtd_produto) VALUES (?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome_produto());
            stmt.setInt(2, produto.getQtd_produto());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro inserir produto: " + erro);
        }
    }
    
    public ArrayList<Produto> ListarProduto(){
        String sql = "SELECT * FROM tb_produto";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                lista.add(produto);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar todos os produtos: " + erro);
        }
        return lista;
    }
    
    public ArrayList<Produto> ListarProdutoPorNome(String nome){
        String sql = "SELECT * FROM tb_produto WHERE nome_produto LIKE '%"+nome+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                lista.add(produto);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar produto por nome: " + erro);
        }
        return lista;
    }
    
    public void ExcluirProduto(Produto produto){
        String sql = "DELETE FROM tb_produto WHERE id_produto = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, produto.getId_produto());
            
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro excluir cliente: " + erro);
        }
    }
    
    public void EditarProduto(Produto produto){
        String sql = "UPDATE tb_produto set nome_produto = ?, qtd_produto = ? WHERE id_produto = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome_produto());
            stmt.setInt(2, produto.getQtd_produto());
            stmt.setInt(3, produto.getId_produto());
            
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro editar cliente: " + erro);
        }
    }
    
}
