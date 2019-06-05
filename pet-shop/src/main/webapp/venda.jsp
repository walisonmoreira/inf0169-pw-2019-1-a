<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pt-BR">

<head>
    <%@ include file = "header.jsp" %>
    <title>Pet Shop - Venda</title>
</head>

<body>
    <%@ include file = "menu.jsp" %>
    <div class="container">
        <form>
            <div class="form-row">
                <div class="col">
                    <select class="custom-select">
                        <option>Sabonete</option>
                        <option>Coleira</option>
                    </select>
                </div>
                <div class="col-2">
                    <input type="text" class="form-control" placeholder="Quantidade">
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-primary">Salvar</button>
                </div>
            </div>
        </form>
        <table class="table table-striped table-bordered table-hover table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Produto</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col">Ações</th>
                </tr>
            </thead>
            <tr>
                <td>
                    <a href="#">Coleira</a>
                </td>
                <td>5</td>
                <td>
                    <a href="#">Excluir</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#">Sabonete</a>
                </td>
                <td>30</td>
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