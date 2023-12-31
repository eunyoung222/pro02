package edu.chunjae.controller.event;

import edu.chunjae.dto.Winner;
import edu.chunjae.model.WinnerDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/WinnerList.do")
public class WinnerListCtrl extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("msg", "당첨자 목록을 출력합니다.");

        WinnerDAO dao = new WinnerDAO();
        List<Winner> winnerList = dao.getWinnerList();
        request.setAttribute("winnerList", winnerList);

        RequestDispatcher view = request.getRequestDispatcher("/event/winnerList.jsp");
        view.forward(request, response);
    }
}
