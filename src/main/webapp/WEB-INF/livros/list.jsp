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
            </tr>
            
            <c:forEach var="livro" items="${livros}">
                <tr>
                    <th>${livro.id}</th>
                    <th>${livro.titulo}</th>
                    <th>${livro.genero.nome}</th>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>