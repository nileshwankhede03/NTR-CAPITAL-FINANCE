package com.marvellous;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerFullName = request.getParameter("fullname");
        String customerEmail = request.getParameter("email");
        String customerPassword = request.getParameter("password");
        String customerConfirmPassword = request.getParameter("confirm_password");
        String customerPhone = request.getParameter("phone");
        long customerPhoneNumber = Long.parseLong(customerPhone);

        response.setContentType("text/html"); // static
        PrintWriter out = response.getWriter(); // use to display on web- browser
        
//        RequestDispatcher robj = request.getRequestDispatcher("Login.html");
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection cobj = DriverManager.getConnection("jdbc:mysql://localhost:3306/NTR_Capital", "root", "nilesh@123");
            
            PreparedStatement pobj = cobj.prepareStatement("INSERT INTO customer(cFullName, cEmail, cPassword, cConfirmPass, cPhone) VALUES (?,?,?,?,?)");    
            
            pobj.setString(1, customerFullName);
            pobj.setString(2, customerEmail);
            pobj.setString(3, customerPassword);
            pobj.setString(4, customerConfirmPassword);
            pobj.setLong(5, customerPhoneNumber);
            
            int row = pobj.executeUpdate();
            
            if (row > 0) 
            {
                out.print("<script>"
                        + "alert('Registration successful!');"
                        + "window.location='Login.html';"  // Redirect after OK is clicked
                        + "</script>");
            } 
            else 
            {
                out.print("<script>alert('Registration failed. Please try again.');</script>");
            }
            
            cobj.close();
        } 
        catch(Exception e) 
        {
            e.printStackTrace();
        }
        
        
    }
}
