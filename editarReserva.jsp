<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Editar Reserva</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Editar Reserva</h1>
    <!-- Aqui você deve recuperar os dados da reserva pelo ID -->
    <form action="ReservaServlet" method="post">
        <input type="hidden" name="id" value="${reserva.id}">
        
        <label for="nomeSala">Nome da Sala:</label>
        <input type="text" id="nomeSala" name="nomeSala" value="${reserva.nomeSala}" required><br>

        <label for="responsavel">Responsável:</label>
        <input type="text" id="responsavel" name="responsavel" value="${reserva.responsavel}" required><br>

        <label for="dataReserva">Data da Reserva:</label>
        <input type="date" id="dataReserva" name="dataReserva" value="${reserva.dataReserva}" required><br>

        <label for="horaInicio">Hora de Início:</label>
        <input type="time" id="horaInicio" name="horaInicio" value="${reserva.horaInicio}" required><br>

        <label for="horaFim">Hora de Fim:</label>
        <input type="time" id="horaFim" name="horaFim" value="${reserva.horaFim}" required><br>

        <label for="motivo">Motivo:</label>
        <textarea id="motivo" name="motivo" required>${reserva.motivo}</textarea><br>

        <button type="submit">Salvar Alterações</button>
    </form>
</body>
</html>
