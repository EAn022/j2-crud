<%@ page contentType="text/html; charser=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>Deletar genero</h1>

    <form action="/delete" method="post">
        <label for="id">id</label>
        <input type="text" name="id" value="${genero.id}" readonly>
        <label for="nome">nome</label>
        <input type="text" name="nome" value="${genero.nome}" readonly> 
        <button type="submit">Deletar</button>
    </form>
</body>
</html>