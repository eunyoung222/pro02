package edu.chunjae.controller.event;

import edu.chunjae.dto.Winner;
import edu.chunjae.model.WinnerDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/Winner.do")
public class WinnerCtrl extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));
        WinnerDAO dao = new WinnerDAO();
        Winner winner = dao.getWinner(no);
        request.setAttribute("winner", winner);
        RequestDispatcher view = request.getRequestDispatcher("/event/getWinner.jsp");
        view.forward(request, response);
    }
}
