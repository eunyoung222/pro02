package edu.chunjae.controller.admin;

import edu.chunjae.dto.Event;
import edu.chunjae.model.EventDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddEventPro.do")
public class AddEventProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Event event = new Event();
        event.setImg(request.getParameter("img"));
        event.setTitle(request.getParameter("title"));
        event.setContent(request.getParameter("content"));

        PrintWriter out = response.getWriter();

        EventDAO dao = new EventDAO();
        int a = dao.addEvent(event);
        if(a>0) {
            response.sendRedirect("/AdminEventList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}
