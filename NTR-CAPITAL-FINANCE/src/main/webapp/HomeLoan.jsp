<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NTR | Home Loan</title>
    <link rel="stylesheet" href="HomeLoan.css">
    <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="upload-container">
    <h1>Home Loan Documents Upload<br><span class="subheading">(Salaried / Self Employed Profile)</span></h1>
    <form action="uploadFileHomeLoan" method="post" enctype="multipart/form-data">

        <!-- Salaried Applicant -->
        <fieldset>
            <legend>Main Applicant (Salaried)</legend>
            <div class="upload-row"><label>PAN Card:<input type="file" name="salariedPanCard" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
            <div class="upload-row"><label>Aadhaar Card:<input type="file" name="salariedAadhaarCard" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
            <div class="upload-row"><label>Light Bill/Rent Agreement:<input type="file" name="salariedLightBill" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
            <div class="upload-row"><label>Salary Bank Statement (Last 1 Year):<input type="file" name="salaryBankStatement" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
            <div class="upload-row"><label>Salary Slip (Last 6 Months):<input type="file" name="salarySlip" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
            <div class="upload-row"><label>Company Offer Letter:<input type="file" name="offerLetter" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Form 16:<input type="file" name="form16" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Passport Size Photo x2:<input type="file" name="passportPhoto" accept=".pdf,.jpg,.jpeg,.png" required></label></div>
        </fieldset>

        <!-- Self-employed Applicant -->
        <fieldset>
            <legend>Main Applicant (Self Employed)</legend>
            <div class="upload-row"><label>PAN Card:<input type="file" name="selfPanCard" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Aadhaar Card:<input type="file" name="selfAadhaarCard" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Light Bill/Rent Agreement:<input type="file" name="selfLightBill" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Current Account Bank Statement (Latest 1 Year):<input type="file" name="currentAccountStatement" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Shop Act:<input type="file" name="shopAct" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Udyam Aadhaar:<input type="file" name="udyamAadhaar" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>GST Return:<input type="file" name="gstReturn" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>ITR (Latest 2 Years):<input type="file" name="itrDocuments" accept=".pdf,.jpg,.jpeg,.png"></label></div>
        </fieldset>

        <!-- Co-applicant (Wife) -->
        <fieldset>
            <legend>Co-applicant (Wife)</legend>
            <div class="upload-row"><label>PAN Card:<input type="file" name="wifePanCard" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Aadhaar Card:<input type="file" name="wifeAadhaarCard" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Passport Size Photo:<input type="file" name="wifePassportPhoto" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Bank Statement (Last 6 Months):<input type="file" name="wifeBankStatement" accept=".pdf,.jpg,.jpeg,.png"></label></div>
            <div class="upload-row"><label>Income Certificate / Proof:<input type="file" name="incomeProof" accept=".pdf,.jpg,.jpeg,.png"></label></div>
        </fieldset>

        <div class="form-actions">
            <button type="submit" class="form-action-btn submit">Submit</button>
            <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
        </div>
    </form>
</div>
</body>
</html>
