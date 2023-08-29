package edu.chunjae.controller.admin;

import edu.chunjae.model.WinnerDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DeleteWinner.do")
public class DeleteWinnerCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));

        WinnerDAO dao = new WinnerDAO();
        int a = dao.deleteWinner(no);

        PrintWriter out = response.getWriter();

        if(a>0){
            response.sendRedirect("/AdminWinnerList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}