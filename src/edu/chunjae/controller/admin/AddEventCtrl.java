package edu.chunjae.controller.admin;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AddEvent.do")
public class AddEventCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "관리자의 이벤트 글 등록폼이 로딩되었습니다.";

        request.setAttribute("msg", msg);
        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/addEvent.jsp");
        view.forward(request, response);
    }
}