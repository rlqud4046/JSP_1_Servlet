package com.sist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CarServlet
 */
@WebServlet("/choiceCar")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CarServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
// 하나의 값을 받을 때
		String name = request.getParameter("name");
		// 여러 개의 값을 받을 때
		String[] cars = request.getParameterValues("car");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<body bgcolor = 'black'>");
		out.println("<table><tr>");
		for (int i = 0; i < cars.length; i++) {
			out.println("<td>");
			out.println("<img src ='" + cars[i] + "' width='200' height ='100'");
			out.println("/%td");
		}
		out.println("</body");
		out.println("<html>");
	}

}
