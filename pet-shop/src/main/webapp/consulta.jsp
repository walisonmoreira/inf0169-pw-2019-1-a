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
                <div class="form-group col-md-5">
                    <input type="text" class="form-control" placeholder="Nome">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" placeholder="E-mail: nome@exemplo.com">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" placeholder="Telefone">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-2">
                    <input type="date" class="form-control">
                </div>
                <div class="form-group col-md-2">
                    <select class="custom-select" id="inputGroupSelect02">
                        <option selected>Idade do Pet</option>
                        <option value="1">Filhote &lt; 6 meses</option>
                        <option value="2">Adulto &gt; 7 meses </option>
                        <option value="3">Idosos &gt; 7 anos</option>
                    </select>
                </div>
                <div class="form-group col-md-2">
                    <input class="form-control" type="time" value="13:45:00" id="example-time-input">
                </div>
                <div class="form-group col-md-5">
                    <input type="text" class="form-control" placeholder="Informações Adicionais">
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-primary">Salvar</button>
                </div>
            </div>


        </form>
        <table class="table table-striped table-bordered table-hover table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Data</th>
                    <th scope="col">Horário</th>
                    <th scope="col">Idade do Pet</th>
                    <th scope="col">Informações adicionais</th>
                </tr>
            </thead>
            <tr>
                <td>Rayssa Fátima Kamilly</td>
                <td><a href='#'>emaildarayssa@exemplo.com</td>
                <td><a href="#">(67) 2622-9953</a></td>
                <td>03/06/2019</td>
                <td>13:00</td>
                <td>Fihote</td>
                <td>Aplicar vacinas e acompanhamhar do crescimento.</td>
            </tr>
            <tr>
                <td>Isabelly Tânia Simone da Silva</td>
                <td><a href='#'>emaildaisabelly@exemplo.com</td>
                <td><a href="#">(85) 2923-2755</a></td>
                <td>06/06/2019</td>
                <td>16:00</td>
                <td>Adulto</td>
                <td>Aplicar vacinas e check-up geral.</td>
            </tr>
            <tr>
                <td>Luís Gael Vitor Duarte</td>
                <td><a href='#'>emaildoluis@exemplo.com</td>
                <td><a href="#">(61) 3996-3926</a></td>
                <td>07/06/2019</td>
                <td>10:00</td>
                <td>Idoso</td>
                <td>Acompanhar Saúde.</td>
            </tr>
        </table>
    </div>

    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>