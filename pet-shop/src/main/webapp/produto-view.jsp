<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pt-BR">

<head>
    <%@ include file = "header.jsp" %>
    <title>Pet Shop - Produto</title>
</head>

<body>
    <%@ include file = "menu.jsp" %>
    <div class="container">
        <form>
            <div class="form-row">
                <div class="col-1">
                    <input name="codigo" type="text" class="form-control" placeholder="Cod.">
                </div>
                <div class="col">
                    <input name="nome" type="text" class="form-control" placeholder="Produto">
                </div>
                <div class="col-2">
                    <input name="preco" type="text" class="form-control" placeholder="Preço">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </div>
        </form>
        <div>
            ${resultado}
        </div>
        <table class="table table-striped table-bordered table-hover table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Produto</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Ações</th>
                </tr>
            </thead>
            <tr>
                <td>
                    <a href="#">Coleira</a>
                </td>
                <td>R$ 25,00</td>
                <td>
                    <a href="#">Excluir</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#">Sabonete</a>
                </td>
                <td>R$ 3,90</td>
                <td>
                    <a href="#">Excluir</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#">Guia</a>
                </td>
                <td>R$ 20,90</td>
                <td>
                    <a href="#">Excluir</a>
                </td>
            </tr>
            <tr>
                    <td>
                        <a href="#">Shampoo</a>
                    </td>
                    <td>R$ 14,90</td>
                    <td>
                        <a href="#">Excluir</a>
                    </td>
                </tr>
            </table>
    </div>

    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>