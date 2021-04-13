package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import Model.Users;

@WebServlet(urlPatterns = {"/BLogin"})
public class BuyerLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException,IOException
	{		
			int timeout = 0;
			Users users = new Users();
			if(users.CheckCredentials(request.getParameter("l_username"), request.getParameter("password")))
			{
				HttpSession session4 = request.getSession();
				session4.setAttribute("buyeruser", request.getParameter("l_username"));
				responce.setHeader("Refresh", timeout+"; url = makeoffer.jsp");
			}
			else
			{
				responce.setHeader("Refresh", timeout+"; url = BuyerLogin.jsp");
			}
	}
}
