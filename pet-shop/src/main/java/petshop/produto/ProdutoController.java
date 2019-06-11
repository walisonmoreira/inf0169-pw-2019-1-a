package petshop.produto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Responsável pela parte "Controller".
 */
@WebServlet(value = "/produto")
public class ProdutoController extends HttpServlet {
    @Override
    protected void service(
            HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {

        String resultado = "";
        try {
            String codigoStr = req.getParameter("codigo");
            if (codigoStr != null) {
                Integer codigo = Integer.parseInt(codigoStr);
                String nome = req.getParameter("nome");
                String precoStr = req.getParameter("preco");
                Double preco = Double.parseDouble(precoStr);

                resultado = ProdutoModel.salvar(codigo, nome, preco);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultado = "Falha inesperada: " + e.getMessage();
        }

        // Adiciona a variável na requisição para o JSP trabalhar.
        req.setAttribute("resultado", resultado);

        // Redireciona requisição para o JSP.
        req.
            getRequestDispatcher("/produto-view.jsp").
            forward(req, resp);

    }
}
