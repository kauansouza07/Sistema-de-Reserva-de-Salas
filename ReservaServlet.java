import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/reserva")
public class ReservaServlet extends HttpServlet {
    // Simulação de banco de dados de reservas
    private List<Reserva> reservas = new ArrayList<>();
    private int nextReservaId = 1;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("delete".equals(action)) {
            int id = Integer.parseInt(req.getParameter("id"));
            reservas.removeIf(reserva -> reserva.getId() == id);
            req.setAttribute("mensagem", "Reserva excluída com sucesso!");
            req.setAttribute("reservas", reservas);
            req.getRequestDispatcher("listarReservas.jsp").forward(req, resp);
        } else if ("edit".equals(action)) {
            // Lógica para editar uma reserva existente
            int id = Integer.parseInt(req.getParameter("id"));
            Reserva reservaParaEditar = null;
            for (Reserva reserva : reservas) {
                if (reserva.getId() == id) {
                    reservaParaEditar = reserva;
                    break;
                }
            }
            if (reservaParaEditar != null) {
                req.setAttribute("reserva", reservaParaEditar);
                req.getRequestDispatcher("editarReserva.jsp").forward(req, resp);
            } else {
                resp.sendRedirect("reserva"); // Se a reserva não for encontrada, volta para a listagem
            }
        } else {
            // Lógica para listar todas as reservas
            req.setAttribute("reservas", reservas);
            req.getRequestDispatcher("listarReservas.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lógica para cadastrar ou atualizar reservas
        String idParam = req.getParameter("id");
        String nomeSala = req.getParameter("nomeSala");
        String responsavel = req.getParameter("responsavel");
        String dataReserva = req.getParameter("dataReserva");
        String horaInicio = req.getParameter("horaInicio");
        String horaFim = req.getParameter("horaFim");
        String motivo = req.getParameter("motivo");

        if (idParam == null || idParam.isEmpty()) {
            // Se não houver ID, é uma nova reserva
            Reserva novaReserva = new Reserva(nextReservaId++, nomeSala, responsavel, dataReserva, horaInicio, horaFim, motivo);
            reservas.add(novaReserva);

            // Adicionar mensagem de feedback
            req.setAttribute("mensagem", "Reserva cadastrada com sucesso!");
        } else {
            // Se houver ID, atualizar reserva existente
            int id = Integer.parseInt(idParam);
            for (Reserva reserva : reservas) {
                if (reserva.getId() == id) {
                    reserva.setNomeSala(nomeSala);
                    reserva.setResponsavel(responsavel);
                    reserva.setDataReserva(dataReserva);
                    reserva.setHoraInicio(horaInicio);
                    reserva.setHoraFim(horaFim);
                    reserva.setMotivo(motivo);
                    break;
                }
            }

            // Adicionar mensagem de feedback para atualização
            req.setAttribute("mensagem", "Reserva atualizada com sucesso!");
        }

        // Encaminhar para a página de listagem com a mensagem
        req.setAttribute("reservas", reservas);
        req.getRequestDispatcher("listarReservas.jsp").forward(req, resp);
    }
}
