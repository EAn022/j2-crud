<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>LISTAGEM DE GÊNEROS</h1>

    <section class="generos">
        <ul>
            <c:forEach var="item" items="${generos}">
                <li>${item.nome}  <span><a href="/update?id=${item.id}">|Editar</a><a href="/delete?id=${item.id}">|Excluír</a></span> </li>
            </c:forEach>
        </ul>
    </section>
</body>
</html>