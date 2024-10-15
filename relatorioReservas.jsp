<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Relatório de Reservas</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Relatório de Reservas</h1>
    <form action="filtrarReservas.jsp" method="get">
        <label for="nomeSala">Filtrar por Nome da Sala:</label>
        <input type="text" id="nomeSala" name="nomeSala"><br>

        <label for="responsavel">Filtrar por Responsável:</label>
        <input type="text" id="responsavel" name="responsavel"><br>

        <label for="dataReserva">Filtrar por Data da Reserva:</label>
        <input type="date" id="dataReserva" name="dataReserva"><br>

        <button type="submit">Filtrar</button>
    </form>

    <h2>Lista de Reservas</h2>
    <table>
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
            <!-- Aqui será populado com os dados filtrados -->
        </tbody>
    </table>
</body>
</html>
