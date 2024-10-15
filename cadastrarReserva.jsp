<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Reserva</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Cadastrar Nova Reserva</h1>
    <form action="ReservaServlet" method="post">
        <label for="nomeSala">Nome da Sala:</label>
        <input type="text" id="nomeSala" name="nomeSala" required><br>

        <label for="responsavel">Responsável:</label>
        <input type="text" id="responsavel" name="responsavel" required><br>

        <label for="dataReserva">Data da Reserva:</label>
        <input type="date" id="dataReserva" name="dataReserva" required><br>

        <label for="horaInicio">Hora de Início:</label>
        <input type="time" id="horaInicio" name="horaInicio" required><br>

        <label for="horaFim">Hora de Fim:</label>
        <input type="time" id="horaFim" name="horaFim" required><br>

        <label for="motivo">Motivo:</label>
        <textarea id="motivo" name="motivo" required></textarea><br>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
