<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>NTR | New Vehicle Loan</title>
	<link rel="stylesheet" href="NewVehicleLoan.css">
    <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">

</head>
<body>
<div class="upload-container">
        <h1>New Vehicle Loan Documents</h1>
        <form>
            <div class="upload-row">
                <label>PAN Card:
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>Aadhaar Card:
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>Light Bill:
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>Bank Statement (Latest 6 Months):
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>Salary Slip (Latest 3 Months):
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>Company Offer Letter:
                    <input type="file" accept="application/pdf">
                </label>
            </div>
            <div class="upload-row">
                <label>Form No 16 (if available):
                    <input type="file" accept="application/pdf">
                </label>
            </div>
            <div class="upload-row">
                <label>Passport Size Photo:
                    <input type="file" accept="application/pdf" required>
                </label>
            </div>
            <div class="upload-row">
                <label>ITR (Latest 2 Years):
                    <input type="file" accept="application/pdf">
                </label>
            </div>
            <div class="form-actions">
                <button type="submit" class="form-action-btn submit">Submit</button>
                <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
            </div>
        </form>
    </div>
</body>
</html>