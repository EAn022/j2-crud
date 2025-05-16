<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livros</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <h1>Deletar livro</h1>
    <p>Deseja realmente remover o livro ${livro.titulo}?</p>
    <form action="/livros/delete" method="post">
        <input type="hidden" name="id" value="${livro.id}">
        <button type="submit" class="btn btn-danger">Salvar</button>
    </form>
</body>
</html>