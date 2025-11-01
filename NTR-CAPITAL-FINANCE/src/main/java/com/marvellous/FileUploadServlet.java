package com.marvellous;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/uploadFilePersonalLoan")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1 MB
		maxFileSize = 1024 * 1024, // 1 MB per file
		maxRequestSize = 1024 * 1024 * 10 // 10 MB total
)
public class FileUploadServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");

		String[] fileFields = { "panCard", "aadhaarCard", "lightBill", "bankStatement", "salarySlip", "offerLetter",
				"form16", "passportPhoto" };

		String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists())
			uploadDir.mkdir();

		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/NTR_Capital", "root",
					"nilesh@123");

			for (String field : fileFields) {
				Part filePart = request.getPart(field);
				if (filePart != null && filePart.getSize() > 0) {
					String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

					// Save to disk
					File file = new File(uploadDir, fileName);
					InputStream fileContent = filePart.getInputStream();
					Files.copy(fileContent, file.toPath(), StandardCopyOption.REPLACE_EXISTING);

					// Save to DB
					PreparedStatement ps = conn.prepareStatement(
							"INSERT INTO personal_loan_docs (doc_type, file_name, file_data) VALUES (?, ?, ?)");
					ps.setString(1, field);
					ps.setString(2, fileName);
					ps.setBlob(3, filePart.getInputStream());
					ps.executeUpdate();
					ps.close();
				}
			}

			conn.close();
			out.print("<script>" + "alert('✅ All selected documents uploaded successfully!');" + "</script>");

			RequestDispatcher rs = request.getRequestDispatcher("/PersonalLoan.jsp");
			rs.include(request, response);

		} 
		catch (Exception e) 
		{
			out.print("<script>" + "alert('❌ Upload failed!');" + "</script>");

			RequestDispatcher rs = request.getRequestDispatcher("/PersonalLoan.jsp");
			rs.include(request, response);
		}
	}
}
