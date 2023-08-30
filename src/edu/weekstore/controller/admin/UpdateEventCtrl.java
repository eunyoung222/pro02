package edu.chunjae.controller.admin;

import edu.chunjae.dto.Event;
import edu.chunjae.model.EventDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/UpdateEvent.do")
public class UpdateEventCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "이벤트의 내용을 수정합니다.";
        int no = Integer.parseInt(request.getParameter("no"));

        EventDAO dao = new EventDAO();
        Event event = dao.getEvent(no);

        request.setAttribute("msg", msg);
        request.setAttribute("event", event);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/updateEvent.jsp");
        view.forward(request,response);
    }
}
