package com.marvellous;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class NTR extends HttpServlet 
{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String coustmerUsername = request.getParameter("username");
		String coustmerPassword =request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
	    try 
	    {
	        
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        
	        Connection cobj = DriverManager.getConnection("jdbc:mysql://localhost:3306/NTR_Capital", "root", "nilesh@123");
	        
	        PreparedStatement sobj = cobj.prepareStatement("SELECT * FROM customer where cEmail = ? AND cPassword = ?");
	        
	        sobj.setString(1, coustmerUsername);
	        sobj.setString(2, coustmerPassword);

	        ResultSet robj = sobj.executeQuery();
	        
	        
	        if(robj.next())
	        {
                out.print("<script>"
                        + "alert('Login successful!');"
                        + "</script>");
             
                HttpSession session = request.getSession();
                
                session.setAttribute("onFrontName", robj.getString(1));
                session.setAttribute("onFrontEmail", robj.getString(2));
                session.setAttribute("OnFrontPhone", robj.getLong(5));
                
	        	RequestDispatcher rs = request.getRequestDispatcher("/Profile.jsp");
	        	rs.include(request, response);
	        	
	        }
	        else
	        {
                out.print("<script>"
                        + "alert('Invalid Credentials');"
                        + "</script>");
               
	        	RequestDispatcher rs = request.getRequestDispatcher("/Register.html");
	        	rs.include(request, response);
	        }
	
	        cobj.close();
	    } 
	    catch(Exception e) 
	    {
	        e.printStackTrace();
	    }
	}
}