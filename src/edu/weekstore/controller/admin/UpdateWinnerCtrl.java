package edu.chunjae.controller.admin;

import edu.chunjae.dto.Winner;
import edu.chunjae.model.WinnerDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/UpdateWinner.do")
public class UpdateWinnerCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "당첨자 발표의 내용을 수정합니다.";
        int no = Integer.parseInt(request.getParameter("no"));

        WinnerDAO dao = new WinnerDAO();
        Winner winner = dao.getWinner(no);

        request.setAttribute("msg", msg);
        request.setAttribute("winner", winner);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/updateWinner.jsp");
        view.forward(request,response);
    }
}