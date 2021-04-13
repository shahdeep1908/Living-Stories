package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.Users;

@WebServlet(urlPatterns = {"/bregister"})
public class BuyerRegister extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException,IOException
	{
		Users users = new Users();
		if(users.InsertUser(request.getParameter("username"), request.getParameter("password"), request.getParameter("email"), request.getParameter("location")))
		{	
			HttpSession session3 = request.getSession();
			session3.setAttribute("buyeruser", request.getParameter("username"));
			System.out.println("Successfull!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("/makeoffer.jsp");  
			rd.forward(request, responce);			
		}
	}
}

