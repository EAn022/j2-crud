<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livros</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <h1>Novo livro</h1>
    <form action="/livros/insert" method="post">
        <div>
            <label for="titulo">Título do livros</label>
            <input type="text" name="titulo">
        </div>
        <div>
            <label for="id_generos">Gêneros do livro</label>
            <select name="id_generos">
                <c:forEach var="genero" items="${generos}">
                    <option value="${genero.id}">${genero.nome}</option>
                </c:forEach>
            </select>
            <button type="submit">Salvar</button>
        </div>
    </form>
</body>
</html>