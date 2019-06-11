package petshop.produto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Responsável pela parte "Model".
 */
public class ProdutoModel {
    public static String salvar(Integer codigo, String nome, Double preco) {
        try {
            String url = "jdbc:derby://localhost:1527/db;create=true";
            String user = "app";
            String password = "app";

            //Obtendo uma conexão com o banco de dados.
            Connection conn = DriverManager.getConnection(url, user, password);

            String sql = "insert into produto (codigo, nome, preco) values (?, ?, ?)";

            //Prepara uma sentença SQL.
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, codigo);
            pstmt.setString(2, nome);
            pstmt.setDouble(3, preco);

            //Executa sentença SQL.
            pstmt.execute();
            return "Produto salvo com sucesso.";
        } catch (Exception e) {
            e.printStackTrace();
            return "Falha ao salvar produto.";
        }
    }
}
