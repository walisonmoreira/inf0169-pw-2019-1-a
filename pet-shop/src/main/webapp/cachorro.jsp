<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pt-BR">

<head>
    <%@ include file = "header.jsp" %>
    <title>Pet Shop - Hotel - Cachorro</title>
</head>

<body>
    <%@ include file = "menu.jsp" %>
    <table class="table table-striped table-bordered table-hover table-sm">

        <thead class="thead-dark">
            <tr>
                <th scope="col">Tamanho Da Raça</th>
                <th scope="col">Quantidade de Vagas</th>
                <th scope="col">Valor da Diária</th>
            </tr>
        </thead>
        <tr>
            <td>
                <a href="#">Porte Grande</a>
            </td>
            <td>5</td>
            <td>R$: 100,00</td>
        </tr>
        <tr>
            <td>
                <a href="#">Porte Médio</a>
            </td>
            <td>7</td>
            <td>R$: 75,00</td>
        </tr>
        <tr>
            <td>
                <a href="#">Porte Pequeno</a>
            </td>
            <td>10</td>
            <td>R$: 50,00</td>
        </tr>
    </table>
    </div>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>