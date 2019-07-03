package petshop.produto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

// Fazer serviços RETS apenas com servlet, é muito difícil!
@WebServlet(value = "/api/produtos-rest-servlet/quantidade")
public class ProdutoRestController extends HttpServlet {

  @Override
  protected void doGet(
      HttpServletRequest req,
      HttpServletResponse resp) throws ServletException, IOException {

    try {

      String maiorStr = req.getParameter("maior");
      double maior = maiorStr == null ? 0 : Double.parseDouble(maiorStr);

      resp.getOutputStream().print(
          "{"
              + "\"resultado\":" + ProdutoModel.qtdeProdutos(maior)
              + "}");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
