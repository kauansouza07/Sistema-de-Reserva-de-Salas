<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Listar Reservas</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Lista de Reservas</h1>

    <!-- Exibe mensagem de sucesso ou erro -->
    <c:if test="${not empty mensagem}">
        <div style="color: green;">
            ${mensagem}
        </div>
    </c:if>

    <!-- Tabela com as reservas cadastradas -->
    <table border="1">
        <thead>
            <tr>
                <th>Nome da Sala</th>
                <th>Responsável</th>
                <th>Data da Reserva</th>
                <th>Hora de Início</th>
                <th>Hora de Fim</th>
                <th>Motivo</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reserva" items="${reservas}">
                <tr>
                    <td>${reserva.nomeSala}</td>
                    <td>${reserva.responsavel}</td>
                    <td>${reserva.dataReserva}</td>
                    <td>${reserva.horaInicio}</td>
                    <td>${reserva.horaFim}</td>
                    <td>${reserva.motivo}</td>
                    <td>
                        <a href="editarReserva.jsp?id=${reserva.id}">Editar</a>
                        <a href="reserva?action=delete&id=${reserva.id}">Excluir</a> <!-- Link de exclusão atualizado -->
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
