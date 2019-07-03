<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="petshop.produto.Produto" %>
<!doctype html>
<html lang="pt-BR">

<head>
  <%@ include file = "header.jsp" %>
  <title>Pet Shop - Produto</title>
  <script>
    function abrirParaEdicao(codigo, nome, preco) {
      $("#codigo").val(codigo);
      $("#nome").val(nome);
      $("#preco").val(preco);
    }
  function mostrarQtdeProdutos() {
    //Realiza requisição REST.
    $.ajax({
      dataType: "json",
      url: "./api/produtos/quantidade?maior=30"
    }).then(function (data) {
      alert(data.resultado + " produtos.");
    });
  }
  </script>
</head>

<body>
    <%@ include file = "menu.jsp" %>
    <div class="container">
        <form>
            <div class="form-row">
                <div class="col-1">
                    <input name="codigo" id="codigo" type="text" class="form-control" placeholder="Cod.">
                </div>
                <div class="col">
                    <input name="nome" id="nome" type="text" class="form-control" placeholder="Produto">
                </div>
                <div class="col-2">
                    <input name="preco" id="preco" type="text" class="form-control" placeholder="Preço">
                </div>
                <div class="form-group">
                    <button type="submit" name="operacao" value="incluir" class="btn btn-primary">Incluir</button>
                    <button type="submit" name="operacao" value="alterar" class="btn btn-primary">Alterar</button>
                    <button type="button" name="qtdeProdutos" value="qtdeProdutos" class="btn btn-primary" onclick="mostrarQtdeProdutos()">Quantidade</button>
                </div>
            </div>
        </form>
        <div>
            ${resultado}
        </div>
        <table class="table table-striped table-bordered table-hover table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Produto</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Ações</th>
                </tr>
            </thead>
<%
        List<Produto> produtos = (List) request.getAttribute("produtos");
        if (produtos != null) {
          for (Produto produto : produtos) {
            Integer codigo = produto.getCodigo();
            String nome = produto.getNome();
            Double preco = produto.getPreco();
%>
    <tr>
        <td><%=codigo%></td>
        <td>
          <a href="#" onclick="abrirParaEdicao('<%=codigo%>', '<%=nome%>', '<%=preco%>')">
            <%=nome%>
          </a>
        </td>
        <td>R$ <%=preco%></td>
        <td><a href="?operacao=excluir&codigo=<%=codigo%>">Excluir</a></td>
    </tr>
<%
        }
          }
%>
            </table>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>