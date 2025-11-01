package com.marvellous;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
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

@WebServlet("/uploadFileMachineryMedical")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 10,  // 10MB
    maxFileSize = 1024 * 1024 * 50,        // 50MB per file
    maxRequestSize = 1024 * 1024 * 100     // 100MB total
)
public class FileUploadMachineMedical extends HttpServlet {
    private static final String SAVE_DIR = "uploadFiles";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get app directory to save files
        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + SAVE_DIR;

        // Create directory if not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }

        // Check user session
        String userId = (String) request.getSession().getAttribute("userId");
        if (userId == null) {
            out.print("<script>alert('⚠️ User session expired. Please login again.'); window.location='Login.jsp';</script>");
            return;
        }

        try {
            // Save each uploaded file and get the saved unique filenames
            String shopAct = saveFile(request.getPart("shopAct"), savePath);
            String udyamAadhaar = saveFile(request.getPart("udyamAadhaar"), savePath);
            String gstReturn = saveFile(request.getPart("gstReturn"), savePath);
            String bankStatement = saveFile(request.getPart("bankStatement"), savePath);
            String firmPanCard = saveFile(request.getPart("firmPanCard"), savePath);
            String panCard = saveFile(request.getPart("panCard"), savePath);
            String aadhaarCard = saveFile(request.getPart("aadhaarCard"), savePath);
            String residencyLightBill = saveFile(request.getPart("residencyLightBill"), savePath);
            String shopLightBill = saveFile(request.getPart("shopLightBill"), savePath);
            String passportPhoto = saveFile(request.getPart("passportPhoto"), savePath);
            String itr = saveFile(request.getPart("itrDocuments"), savePath);

            // DB connection details (update your db credentials accordingly)
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/NTR_Capital", "root", "nilesh@123")) {

                String sql = "INSERT INTO machinery_medical_docs (user_id, shop_act, udyam_aadhaar, gst_return, bank_statement, firm_pan_card, pan_card, aadhaar_card, residency_light_bill, shop_light_bill, passport_photo, itr) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, userId);
                    ps.setString(2, shopAct);
                    ps.setString(3, udyamAadhaar);
                    ps.setString(4, gstReturn);
                    ps.setString(5, bankStatement);
                    ps.setString(6, firmPanCard);
                    ps.setString(7, panCard);
                    ps.setString(8, aadhaarCard);
                    ps.setString(9, residencyLightBill);
                    ps.setString(10, shopLightBill);
                    ps.setString(11, passportPhoto);
                    ps.setString(12, itr);

                    int inserted = ps.executeUpdate();
                    if (inserted > 0) {
                        out.print("<script>alert('✅ All Documents uploaded successfully!'); window.location='MachineMedical.jsp';</script>");
                    } else {
                        out.print("<script>alert('❌ Upload failed, please try again later.'); window.location='MachineMedical.jsp';</script>");
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.print("<script>alert('❌ Error occurred: " + e.getMessage().replace("'", "") + "'); window.location='MachineMedical.jsp';</script>");
        }
    }

    // Save file with timestamp appended to avoid overwriting files
    private String saveFile(Part part, String savePath) throws IOException {
        if (part != null && part.getSize() > 0) {
            String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            int dotIndex = originalFileName.lastIndexOf('.');
            String name = (dotIndex > 0) ? originalFileName.substring(0, dotIndex) : originalFileName;
            String ext = (dotIndex > 0) ? originalFileName.substring(dotIndex) : "";
            String uniqueFileName = name + "_" + System.currentTimeMillis() + ext;

            part.write(savePath + File.separator + uniqueFileName);
            return uniqueFileName;
        }
        return null; // if no file uploaded for optional fields
    }
}
