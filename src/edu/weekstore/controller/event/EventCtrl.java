package edu.chunjae.controller.event;

import edu.chunjae.dto.Event;
import edu.chunjae.model.EventDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/Event.do")
public class EventCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));
        EventDAO dao = new EventDAO();
        Event event = dao.getEvent(no);
        request.setAttribute("event", event);
        RequestDispatcher view = request.getRequestDispatcher("/event/getEvent.jsp");
        view.forward(request, response);
    }
}
