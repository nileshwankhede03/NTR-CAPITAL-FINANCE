package com.marvellous;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ForgotPassword extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
	}

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException 
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cobj = DriverManager.getConnection("jdbc:mysql://localhost:3306/NTR_Capital","root","nilesh@123");
			PreparedStatement pobj = cobj.prepareStatement("UPDATE customer SET cPassword = ? WHERE cEmail = ? ");
			pobj.setNString(1, "");
			
			
			pobj.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
