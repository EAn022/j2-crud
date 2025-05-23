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
    <section class="cabecalho">
        <h1>LISTAGEM DE GÊNEROS</h1>
        <nav class="navbar">
            <h2>Gêneros:</h2>
            <a class="btn-adicionar" href="/insert">+</a>
            <a class="btn-adicionar" href="/livros/list">Livros</a>
        </nav>
    </section>
    <section class="generos">
        <c:forEach var="item" items="${generos}">
            <div class="card-item">
                <span>${item.nome}</span>  
                
                <div class="controles">
                    <span><a href="/update?id=${item.id}">|Editar</a><a href="/delete?id=${item.id}">|Excluír</a></span> 
                </div>
            </div>   
        </c:forEach>
    </section>
</body>
</html>