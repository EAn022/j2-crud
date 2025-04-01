<%@ page contentType="text/html; charset=UTF-8" language ="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <section class="form-area">
        <div class="card-form">
            <section class="cabecalho">
                <nav class="navbar">
                    <h1>Atualização de genero</h1>
                    <a class="btn-navegar" href="/">VOLTAR</a>

                </nav>
            </section>
            <section class="form">
                <form action="/update" method="post">
                    <label for="id">id</label>
                    <input type="number" name="id" value="${genero.id}" readonly>
                    
                    <label for="nome">nome</label>
                    <input type="text" name="nome" value="${genero.nome}">
                    
                    <button class="btn-salvar" type="submit">SALVAR</button>

                </form>
                
            </section>
        </div>
    </section>
</body>
</html>