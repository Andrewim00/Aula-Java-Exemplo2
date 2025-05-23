<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <title>Novo Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
        <div class="container">
            <h1>Novo Livro</h1>

            <form action="/livros/insert" method="post">
                <div>
                    <label class="form-label">Título</label>
                    <input type="text" class="form-control" name="titulo" />
                </div>

                <div>
                    <label class="form-label">Gênero</label>
                    <select class="form-select" name="id_genero">
                        <c:forEach var="g" items="${generos}">
                            <option value="${g.id}">${g.nome}</option>
                        </c:forEach>
                    </select>
                </div>

                <div>
                    <label class="form-label">Autores</label>
                    <c:forEach var="a" items="${autores}">
                        <div class="form-check">
                            <input type="checkbox" name="autores" value="${a.id}" class="form-check-input" />
                            <label class="form-check-label">${a.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>