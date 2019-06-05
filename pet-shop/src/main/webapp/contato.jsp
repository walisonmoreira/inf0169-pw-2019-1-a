<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <%@ include file = "header.jsp" %>
    <title>Pet Shop - Contato</title>
</head>

<body>
    <%@ include file = "menu.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-0">
                <h1>Contato</h1>
                <form>
                    <div class="form-group">
                        <label for="campo-nome">Nome</label>
                        <input type="nome" class="form-control" id="campo-nome">
                    </div>
                    <div class="form-group">
                        <label for="campo-email">E-mail</label>
                        <input type="email" class="form-control" id="campo-email" placeholder="nome@exemplo.com.br">
                    </div>
                    <div class="form-group">
                        <label for="telefone">Telefone</label>
                        <input type="text" class="form-control" id="campo-telefone" placeholder="(99) 98888-8888">
                    </div>
                    <div class="form-group">
                        <label for="assunto">Assunto</label>
                        <input type="assunto" class="form-control" id="campo-assunto">
                    </div>
                    <div class="form-group">
                        <label for="mensagem">Mensagem</label>
                        <textarea name="mensagem" id="mensagem" class="form-control" cols="25" rows="5"></textarea>

                    </div>
                    <button type="button" class="btn btn-primary" onclick="enviar()">Enviar</button>
                </form>
                <img src="img/dog.png" class="lightbox zoom">
            </div>
        </div>
    </div>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>