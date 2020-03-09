package com.sist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdderServlet")
public class AdderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method="get" 데이터를 처리하는 메서드
		// request : 첫 번째 매개변수 - 사용자(클라이언트)의 요청에 대한 정보를 처리
		// response : 두 번째 매개변수 - 요청 정보에 대한 처리 결과를 클라이언트에 응답 처리
		
		// 단계1. 클라이언트의 데이터 받기 - 사용자가 전송한 데이터를 받기
		int su1= Integer.parseInt(request.getParameter("num1"));
		int su2= Integer.parseInt(request.getParameter("num2"));
		
		// 웹브라우저에 응답
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<h2>두 수의 합 : " + (su1+su2)+"</h2>");
		out.println("</html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method="post" 데이터를 처리하는 메서드
	}

}
