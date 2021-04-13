package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import Model.Users;

@WebServlet(urlPatterns = {"/register"})
public class UserCredentialsRegisterController extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException,IOException
	{
		Users users = new Users();
		if(users.InsertUser(request.getParameter("username"), request.getParameter("password"), request.getParameter("email"), request.getParameter("location")))
		{
			Cookie c1 = new Cookie("username",request.getParameter("username"));
			Cookie c2 = new Cookie("password",request.getParameter("password"));
			responce.addCookie(c1);
			responce.addCookie(c2);
	
			System.out.println("Successfull!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("/seller_image.jsp");  
			rd.forward(request, responce);			
		}
	}
}

