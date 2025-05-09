<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <section class="cabecalho">
        <h1>LISTAGEM DE AUTORES</h1>
        <nav class="navbar">
            <h2>Autores:</h2>
            <a class="btn-adicionar" href="/autores/insert">+</a>
            <a class="btn-adicionar" href="/autores/list">Livros</a>
        </nav>
    </section>
    <section class="generos">
        <c:forEach var="item" items="${autores}">
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