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
    <div class="container">
        <h1>Livros</h1>
        <a href="/livros/insert" class=" btn">Novo livro</a>
        <table class="table">
            <tr>
                <th>id</th>
                <th>titulo</th>
                <th>genero</th>
                <th>autores</th>
                <th>-</th>
            </tr>
            
            <c:forEach var="livro" items="${livros}">
                <tr>
                    <td>${livro.id}</td>
                    <td>${livro.titulo}</td>
                    <td>${livro.genero.nome}</td>
                    <td>
                        <c:forEach var = "a" items = "${livro.autores}">
                            ${a.nome}
                        </c:forEach>
                    </td>
                    <td>
                        <a href="/livro/update/${livro.id}" class="btn btn-primary">Editar</a>
                        <a href="/livro/delete/${livro.id}" class="btn btn-danger">remover</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>