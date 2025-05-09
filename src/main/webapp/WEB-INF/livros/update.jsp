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
    <h1>Editar livro</h1>
    <form action="/livros/update" method="post">
        <input type="hidden" name="id" value="${livro.id}">
        <div>
            <label for="titulo">Título do livros</label>
            <input type="text" name="titulo" value="${livro.titulo}">
        </div>
        <div>
            <label for="id_generos">Gêneros do livro</label>
            <select name="id_generos">
                <c:forEach var="genero" items="${generos}">
                    <option ${(livro.genero.id == genero.id)? "selected" : ""} value="${genero.id}">${genero.nome}</option>
                </c:forEach>
            </select>
            <button type="submit">Salvar</button>
        </div>
        <div>
            <label class="form-label" for="">Autores</label>
            <c:forEach var = "a" items = "${autores}">
                <div class="form-check">
                    <input ${(livro.autores.contains(a))? "checked" : ""} type="checkbox" name="autores" value="${a.id}" class="form-check-input">
                    <label for="" class="form-check-input">${a.nome}</label>
                </div>
            </c:forEach>
        </div>
    </form>
</body>
</html>