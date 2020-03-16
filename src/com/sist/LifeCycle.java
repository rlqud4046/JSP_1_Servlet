package com.sist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifeCycle")
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LifeCycle() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	System.out.println("init()메서드를 호출했습니다.");
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget()메서드를 호출했습니다.");
	}
	
	
	
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost()메서드를 호출했습니다.");
	}*/
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service() 메서드를 호출했습니다.");
		
		// 서비스 메서드는 겟,포스트방식 둘다를 처리해줄수 있으므로 두겟, 두포스트 메서드는 실행되지 않는다.
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy() 메서드를 호출했습니다.");
	}

}
