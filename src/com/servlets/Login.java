package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.model.PaymentModel;
import com.xml.util.XmlUtil;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession sess = request.getSession();
		
		String useremail=request.getParameter("email");
		
		String nextPage="";
		
		if(useremail.equalsIgnoreCase("admin@demo.com"))
		{
			
			sess.setAttribute("loginUser", useremail);
			nextPage="AdminHome.jsp";
		}
	
		else{
			sess.setAttribute("loginUser", useremail);
			XmlUtil util = new XmlUtil();
			List<PaymentModel> payList =  util.readxml();
			sess.setAttribute("payList", payList);
			List<PaymentModel> favList =  util.getFavorites();
			sess.setAttribute("favList", favList);
			
			String remainBal=util.getMainbalance();
			sess.setAttribute("RemainBal", remainBal);
			
			nextPage="Home.jsp";
		}
			
	
			
		
		response.sendRedirect(nextPage);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("In Post");
	}

}
