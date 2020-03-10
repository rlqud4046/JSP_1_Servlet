package com.sist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); // 입력에 한글이 있다면 !
		String userID = request.getParameter("id");
		String userPW = request.getParameter("pwd");
		String userName = request.getParameter("name");
		
		response.setContentType("text/html; charset=UTF-8"); // 출력에 한글이 있다면 !
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>");
		out.println("아이디 : " + userID + "<br/>");
		out.println("비밀번호 : " + userPW + "<br/>");
		out.println("이름 : " + userName + "<br/>");
		out.println("</h2>");
		out.println("</body>");
		out.println("</html>");
	}

}
