<%@ page contentType="text/html; charset=UTF-8" language ="java" %>
<%@ taglib uri ="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generos</title>
</head>
<body>
    <h1>Atualização de genero</h1>
   
    <form action="/generos/update" method="post">
        <label for="id">id</label>
        <input type="number" name="id" value="${genero.id}" readonly>
        <label for="nome">nome</label>
        <input type="text" name="nome" value="${genero.nome}">
        <button type="submit">SALVAR</button>
    </form>
</body>
</html>