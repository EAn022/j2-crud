<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generos</title>
</head>
<body>
    <h1>Lista de Generos</h1>
    <c:forEach var="item" items="${generos}">
        <p>teste de acesso da variavel "generos": ${generos}</p>
    </c:forEach>
</body>
</html>