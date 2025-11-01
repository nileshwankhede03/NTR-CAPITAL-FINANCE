<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>NTR | Personal Loan</title>
  <link rel="stylesheet" href="PersonalLoan.css">
  <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="upload-container">
  <h1>Personal Loan Documents</h1>
  <form enctype="multipart/form-data" action="uploadFilePersonalLoan" method="post">
    <div class="upload-row"><label>PAN Card:
      <input type="file" name="panCard" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Aadhaar Card:
      <input type="file" name="aadhaarCard" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Light Bill:
      <input type="file" name="lightBill" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Bank Statement (Last 6 Months):
      <input type="file" name="bankStatement" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Salary Slip (Last 3 Months):
      <input type="file" name="salarySlip" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Company Offer Letter:
      <input type="file" name="offerLetter" accept=".pdf,.jpg,.jpeg,.png">
    </label></div>

    <div class="upload-row"><label>Form 16 (if available):
      <input type="file" name="form16" accept=".pdf,.jpg,.jpeg,.png">
    </label></div>

    <div class="upload-row"><label>Passport Size Photo:
      <input type="file" name="passportPhoto" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="form-actions">
      <button type="submit" class="form-action-btn submit">Submit</button>
      <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
    </div>
  </form>
</div>
</body>
</html>
