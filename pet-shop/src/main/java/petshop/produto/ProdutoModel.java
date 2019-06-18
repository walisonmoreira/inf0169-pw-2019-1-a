package petshop.produto;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Responsável pela parte "Model".
 */
public class ProdutoModel {
    public static String salvar(Integer codigo, String nome, Double preco)  throws Exception {
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
    }

    public static List listar() throws Exception {
        String url = "jdbc:derby://localhost:1527/db;create=true";
        String user = "app";
        String password = "app";

        //Obtendo uma conexão com o banco de dados.
        Connection conn = DriverManager.getConnection(url, user, password);

        String sql = "select codigo, nome, preco from produto";

        //Prepara uma sentença SQL.
        PreparedStatement pstmt = conn.prepareStatement(sql);

        //Executa sentença SQL.
        ResultSet resultSet = pstmt.executeQuery();

        List resultado = new ArrayList();
        while (resultSet.next()) {
            HashMap registro = new HashMap();
            registro.put("codigo", resultSet.getInt(1));
            registro.put("nome", resultSet.getString(2));
            registro.put("preco", resultSet.getDouble(3));
            resultado.add(registro);
        }
        return resultado;
    }

    public static void excluir(Integer codigo) throws Exception {
        String url = "jdbc:derby://localhost:1527/db;create=true";
        String user = "app";
        String password = "app";

        //Obtendo uma conexão com o banco de dados.
        Connection conn = DriverManager.getConnection(url, user, password);

        String sql = "delete from produto where codigo = ?";

        //Prepara uma sentença SQL.
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, codigo);

        //Executa sentença SQL.
        pstmt.execute();
    }
}
