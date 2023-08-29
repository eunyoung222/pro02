package edu.chunjae.controller.admin;

import edu.chunjae.dto.Winner;
import edu.chunjae.model.WinnerDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddWinnerPro.do")
public class AddWinnerProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Winner winner = new Winner();
        winner.setTitle(request.getParameter("title"));
        winner.setContent(request.getParameter("content"));

        PrintWriter out = response.getWriter();

        WinnerDAO dao = new WinnerDAO();
        int a = dao.addWinner(winner);
        if(a>0) {
            response.sendRedirect("/AdminWinnerList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}