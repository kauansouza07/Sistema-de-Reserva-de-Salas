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
            <!-- Exemplo de reservas. Estes dados virão do servlet -->
            <tr>
                <td>Sala A</td>
                <td>João</td>
                <td>2024-10-15</td>
                <td>09:00</td>
                <td>10:00</td>
                <td>Reunião</td>
                <td>
                    <a href="editarReserva.jsp?id=1">Editar</a>
                    <a href="excluirReserva.jsp?id=1">Excluir</a>
                </td>
            </tr>
            <!-- Repita os dados para cada reserva -->
        </tbody>
    </table>
</body>
</html>
