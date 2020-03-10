package com.sist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScoreServlet
 */
@WebServlet("/score")
public class ScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ScoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		
		int sum = kor+eng+mat;
		double avg = sum/3.0;
		// String avg1 = String.format("%.2f", avg); 이렇게 해서 소숫점 아래 2자리까지 미리 잘라내기도 가능
		String grade;
		if(avg>=90) grade = "A";
		else if(avg>=80) grade = "B";
		else if(avg>=70) grade = "C";
		else if(avg>=60) grade = "D";
		else grade = "F";
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<div align='center'>");
		out.println("<table border='1' cellspacing='0'>");
		out.println("<tr>");
		out.println("<th>이름</th>");
		out.println("<th>국어</th>");
		out.println("<th>영어</th>");
		out.println("<th>수학</th>");
		out.println("<th>총점</th>");
		out.println("<th>평균</th>");
		out.println("<th>학점</th>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>"+userName+"</td>");
		out.println("<td>"+kor+"</td>");
		out.println("<td>"+eng+"</td>");
		out.println("<td>"+mat+"</td>");
		out.println("<td>"+sum+"</td>");
		out.printf("<td> %.2f</td>", avg);
		out.println("<td>"+grade+"</td>");
		out.println("<tr>");
		out.println("</table>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
