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

@WebServlet(urlPatterns = {"/Login"})
public class UserCredentialsController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException,IOException
	{		
		try{
			int timeout = 0;
			Cookie c[] = request.getCookies();
			String user = c[0].getValue();
			String pass = c[1].getValue();
			System.out.println(user);
			System.out.println(pass);
			responce.setHeader("Refresh", timeout+"; url = seller.jsp");			
		}
		catch(Exception e)
		{
			Cookie ck1 = new Cookie("username",request.getParameter("l_username"));
			Cookie ck2 = new Cookie("password",request.getParameter("password"));
			responce.addCookie(ck1);
			responce.addCookie(ck2);
			int timeout = 0;
			Users users = new Users();
			if(users.CheckCredentials(request.getParameter("l_username"), request.getParameter("password")))
			{
				responce.setHeader("Refresh", timeout+"; url = seller_image.jsp");
			}
			else
			{
				responce.setHeader("Refresh", timeout+"; url = LoginPage.jsp");
			}
		}
	}
}
