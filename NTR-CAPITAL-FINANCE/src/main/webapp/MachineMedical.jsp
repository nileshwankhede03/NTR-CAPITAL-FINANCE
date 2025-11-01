<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NTR | Machinery/Medical equipment Loan</title>
    <link rel="stylesheet" href="MachineMedical.css">
    <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="upload-container">
    <h1>Machinery/Medical Loan Documents</h1>
    <form action="uploadFileMachineryMedical" method="post" enctype="multipart/form-data">

        <div class="upload-row">
            <label for="shopAct">Shop Act:
                <input type="file" name="shopAct" id="shopAct" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="udyamAadhaar">Udyam Aadhaar:
                <input type="file" name="udyamAadhaar" id="udyamAadhaar" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="gstReturn">GST Return (if available):
                <input type="file" name="gstReturn" id="gstReturn" accept=".pdf,.jpg,.jpeg,.png">
            </label>
        </div>

        <div class="upload-row">
            <label for="bankStatement">Current Account Bank Statement (Last 6 Months):
                <input type="file" name="bankStatement" id="bankStatement" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="firmPanCard">Firm PAN Card (if available):
                <input type="file" name="firmPanCard" id="firmPanCard" accept=".pdf,.jpg,.jpeg,.png">
            </label>
        </div>

        <div class="upload-row">
            <label for="panCard">PAN Card:
                <input type="file" name="panCard" id="panCard" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="aadhaarCard">Aadhaar Card:
                <input type="file" name="aadhaarCard" id="aadhaarCard" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="residencyLightBill">Residency Light Bill:
                <input type="file" name="residencyLightBill" id="residencyLightBill" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="shopLightBill">Shop Light Bill:
                <input type="file" name="shopLightBill" id="shopLightBill" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="passportPhoto">Passport Size Photo:
                <input type="file" name="passportPhoto" id="passportPhoto" accept=".pdf,.jpg,.jpeg,.png" required>
            </label>
        </div>

        <div class="upload-row">
            <label for="itrDocuments">ITR (Last 3 Years):
                <input type="file" name="itrDocuments" id="itrDocuments" accept=".pdf,.jpg,.jpeg,.png" required>
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
