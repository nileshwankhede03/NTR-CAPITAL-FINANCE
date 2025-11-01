<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NTR | Loan Against Property</title>
    <link rel="stylesheet" href="LoanAgainstProperty.css">
    <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">

</head>
<body>
<div class="upload-container">
    <h1> Loan Against Property Documents</h1>
    <form>
        <div class="section-title">Applicant Documents</div>
        <div class="upload-row"><label>Property Documents (Chain Documents):<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Index 2:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Kharedi Khat:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>PAN Card:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Aadhaar Card:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Light Bill:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Latest 1 Year Bank Statement:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Company Letter:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Salary Slip (Latest 3 Months):<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Form No 16:<input type="file" accept="application/pdf"></label></div>
        <div class="upload-row"><label>Passport Size Photo:<input type="file" accept="application/pdf" required></label></div>
        <div class="section-title">Co-Applicant (Wife) Documents</div>
        <div class="upload-row"><label>PAN Card:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Aadhaar Card:<input type="file" accept="application/pdf" required></label></div>
        <div class="upload-row"><label>Passport Size Photo:<input type="file" accept="application/pdf" required></label></div>
        <div class="form-actions">
            <button type="submit" class="form-action-btn submit">Submit</button>
            <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
        </div>
    </form>
</div>
</body>
</html>