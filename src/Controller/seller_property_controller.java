package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Users;
@WebServlet(urlPatterns = {"/seller_property"})
public class seller_property_controller extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException,IOException
	{		
		try{
			int timeout = 0;
			Cookie c[] = request.getCookies();
			String user = c[0].getValue();
			String pass = c[1].getValue();
		Users users = new Users();
		if(users.SellerDetails(user, request.getParameter("holdername"), request.getParameter("propertyname"), request.getParameter("description"), request.getParameter("details"), request.getParameter("AC"), request.getParameter("geyser"), request.getParameter("parking"), request.getParameter("food"), request.getParameter("timing")))
		{
			System.out.println("Successfull!!");
			responce.setHeader("Refresh", timeout+"; url = price.jsp");
		}
	}
	catch(Exception e)
	{
		int timeout = 120;
		responce.setHeader("Refresh", timeout+"; url = LoginPage.jsp");
	}
		
	}
}
