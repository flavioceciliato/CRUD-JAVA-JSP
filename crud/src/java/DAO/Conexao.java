package DAO;

/**
 *
 * @author flavi
 */
import java.sql.DriverManager;
import java.sql.Connection;

public class Conexao {
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/BDAvaliacao?useSSL=false"
                    ,"root","88395001");
        }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: " + erro);
        }
    }
}
