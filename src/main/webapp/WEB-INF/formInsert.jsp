<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generos</title>
</head>
<body>
    <h1>Novo genero</h1>
    
    <form action="/generos/insert" method="post">
        <label for="genero"></label>
        <input type="text" name="generoNome">
        <button type="submit">SALVAR</button>
    </form>
</body>
</html>