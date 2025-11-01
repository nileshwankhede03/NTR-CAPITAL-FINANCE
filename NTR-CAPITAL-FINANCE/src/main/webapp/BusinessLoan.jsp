<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NTR | Business Loan</title>
	<link rel="stylesheet" href="BusinessLoan.css">
	<link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="upload-container">
  <h1>Business Loan Documents</h1>
  <form enctype="multipart/form-data" action="uploadFileBusinessLoan" method="post">

    <div class="upload-row"><label>Shop Act:
      <input type="file" name="shopAct" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Udyam Aadhaar:
      <input type="file" name="udyamAadhaar" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>GST Return (if available):
      <input type="file" name="gstReturn" accept=".pdf,.jpg,.jpeg,.png">
    </label></div>

    <div class="upload-row"><label>Current Account Bank Statement (Last 6 Months):
      <input type="file" name="bankStatement" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Firm PAN Card (if available):
      <input type="file" name="firmPanCard" accept=".pdf,.jpg,.jpeg,.png">
    </label></div>

    <div class="upload-row"><label>PAN Card:
      <input type="file" name="panCard" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Aadhaar Card:
      <input type="file" name="aadhaarCard" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Residency Light Bill:
      <input type="file" name="residencyLightBill" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Shop Light Bill:
      <input type="file" name="shopLightBill" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>Passport Size Photo:
      <input type="file" name="passportPhoto" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="upload-row"><label>ITR (Last 3 Years):
      <input type="file" name="itrDocuments" accept=".pdf,.jpg,.jpeg,.png" required>
    </label></div>

    <div class="form-actions">
      <button type="submit" class="form-action-btn submit">Submit</button>
      <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
    </div>

  </form>
</div>
</body>
</html>
