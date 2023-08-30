package edu.chunjae.controller.admin;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import edu.chunjae.dto.Event;
import edu.chunjae.model.EventDAO;

import javax.mail.Multipart;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet("/AddEventPro.do")
public class AddEventProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String msg = "";
        ServletContext application = request.getServletContext();

        try {
            String saveDirectory = application.getRealPath("/storage");//실제 저장 경로
            int maxSize = 1024 * 1024 * 10;
            String encoding = "UTF-8";

            MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
            Event event = new Event();
            event.setTitle(mr.getParameter("title"));
            event.setContent(mr.getParameter("content"));

            Enumeration files = mr.getFileNames();
            String item = (String) files.nextElement();

            File upfile = mr.getFile(item);
            if (upfile.exists()) {
                msg = "파일 업로드 성공";
                event.setImg(upfile.getName());
                EventDAO dao = new EventDAO();
                int cnt = dao.addEvent(event);
                String path = request.getContextPath();
                response.sendRedirect(path+"/AdminEventList.do");
            } else {
                msg = "파일 업로드 실패";
                response.sendRedirect("<script>history.go(-1);</script>");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            msg = "파일 업로드 실패";
            response.sendRedirect("<script>history.go(-1);</script>");
        }
    }
}
