package edu.chunjae.controller.custom;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/Login.do")
public class LoginCtrl extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "로그인 하시기 바랍니다.";
        if(request.getParameter("msg")!=null){
            msg = request.getParameter("msg");
        }
        request.setAttribute("msg", msg);
        RequestDispatcher view = request.getRequestDispatcher("/custom/login.jsp");
        view.forward(request, response);
        //String msg = "로그인 하시기 바랍니다.";
        //response.sendRedirect("/custom/login.jsp?msg="+msg);
    }
}