package com.sist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/regist")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdcheck = request.getParameter("pwdcheck");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String rrn1 = request.getParameter("rrn1");
		String rrn2 = request.getParameter("rrn2");
		String rrn = rrn1+"-"+rrn2;		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<div align='center'>");
		out.println("<table border='1' cellspacing='0'>");
		out.println("<tr>");
		out.println("<th>아이디</th>");
		out.println("<th>비밀번호</th>");
		out.println("<th>비밀번호확인</th>");
		out.println("<th>이름</th>");
		out.println("<th>별명</th>");
		out.println("<th>주민등록번호</th>");
		out.println("<th>생년월일</th>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>"+id+"</td>");
		out.println("<td>"+pwd+"</td>");
		out.println("<td>"+pwdcheck+"</td>");
		out.println("<td>"+name+"</td>");
		out.println("<td>"+nickname+"</td>");
		out.println("<td>"+rrn+"</td>");
		out.println("<td>"+year+"-"+month+"-"+day+"</td>");
		out.println("<tr>");
		
		out.println("</table>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
