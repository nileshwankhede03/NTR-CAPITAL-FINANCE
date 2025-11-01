package com.marvellous;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/sendEmail")
public class SendEmailServlet extends HttpServlet 
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		PrintWriter out = response.getWriter();

        String mailName = request.getParameter("name");
        String mailEmail = request.getParameter("email");
        String mailPhone = request.getParameter("phone");
        String mailRating = request.getParameter("rating");
        String mailComments = request.getParameter("comments");

        String to = "wankhedenilesh2025@gmail.com";  
        String subject = "New Feedback from " + mailName;
        String message = "You received new feedback:\n\n"
                       + "Name: " + mailName + "\n"
                       + "Email: " + mailEmail + "\n"
                       + "Phone: " + mailPhone + "\n"
                       + "Rating: " + mailRating + "\n"
                       + "Comments:\n" + mailComments;

        try 
        {
            EmailUtil.sendEmail(to, subject, message);
            
            out.print("<script>"
                    + "alert('✅ Feedback sumbitted successfully!');"
                    + "</script>");
            
        	RequestDispatcher rs = request.getRequestDispatcher("/feedback.jsp");
        	rs.include(request, response);
        } 
        catch (Exception e) 
        {
            out.print("<script>"
                    + "alert('❌ Error sending email: ');"
                    + "</script>");
           
        	RequestDispatcher rs = request.getRequestDispatcher("/feedback.jsp");
        	rs.include(request, response);
        	
            System.out.println(e.getMessage());
        }
    }
}
