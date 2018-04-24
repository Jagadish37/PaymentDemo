package com.servlets;

import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xml.util.XmlUtil;

/**
 * Servlet implementation class Payments
 */
@WebServlet("/Payments")
public class Payments extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payments() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path =request.getParameter("path");
		XmlUtil xutil = new XmlUtil();
		HttpSession session= request.getSession();
		Enumeration<String> names=  request.getParameterNames();
		Enumeration<String> sessionNames=session.getAttributeNames();
		HashMap<String, String> hm = new HashMap<>();
		if(path.equalsIgnoreCase("toConfirm"))
		{
			for (String s : Collections.list(names))
				session.setAttribute(s, request.getParameter(s));;
			response.sendRedirect("PConfirmation.jsp");
		}
		
		if(path.equalsIgnoreCase("confirmed"))
		{
			for (String s : Collections.list(sessionNames))
						hm.put(s, session.getAttribute(s).toString());
			xutil.parseXML(path,hm);
			
			response.sendRedirect("Receipt.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
