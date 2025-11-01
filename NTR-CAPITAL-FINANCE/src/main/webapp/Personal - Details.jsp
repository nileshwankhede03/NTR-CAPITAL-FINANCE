<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> NTR | Personal Details</title>
	<link rel="stylesheet" href="PersonalDetails.css">
	<link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="form-container">
        <h1>Personal Details Form</h1>
        <form>
            <section>
                <h2>Personal Details</h2>
                <div class="form-row">
                    <label>Full Name:</label>
                    <input type="text" name="fullName" required>
                </div>
                <div class="form-row">
                    <label>Contact No.:</label>
                    <input type="text" name="contactNo" required>
                </div>
                <div class="form-row">
                    <label>Alternate Contact No. (Office):</label>
                    <input type="text" name="altContactNo">
                </div>
                <div class="form-row">
                    <label>Personal Email ID:</label>
                    <input type="email" name="personalEmail">
                </div>
                <div class="form-row">
                    <label>Official Email ID:</label>
                    <input type="email" name="officialEmail">
                </div>
                <div class="form-row">
                    <label>Date of Birth:</label>
                    <input type="date" name="dob">
                </div>
                <div class="form-row">
                    <label>Marital Status:</label>
                    <label><input type="radio" name="marital" value="Single"> Single</label>
                    <label><input type="radio" name="marital" value="Married"> Married</label>
                    <label><input type="radio" name="marital" value="Divorced"> Divorced</label>
                    <label><input type="radio" name="marital" value="Widowed"> Widowed</label>
                </div>
                <div class="form-row">
                    <label>Spouse Name:</label>
                    <input type="text" name="spouseName">
                </div>
                <div class="form-row">
                    <label>Spouse DOB:</label>
                    <input type="date" name="spouseDob">
                </div>
                <div class="form-row">
                    <label>Mother’s Name:</label>
                    <input type="text" name="motherName">
                </div>
                <div class="form-row">
                    <label>No. of Dependents:</label>
                    <input type="number" name="dependents" min="0">
                </div>
            </section>

            <section>
                <h2>Education & Employment Details</h2>
                <div class="form-row">
                    <label>Highest Qualification:</label>
                    <input type="text" name="qualification">
                </div>
                <div class="form-row">
                    <label>Designation (Current Company):</label>
                    <input type="text" name="designation">
                </div>
                <div class="form-row">
                    <label>Company Name:</label>
                    <input type="text" name="companyName">
                </div>
                <div class="form-row">
                    <label>Company Address:</label>
                    <input type="text" name="companyAddress">
                </div>
                <div class="form-row">
                    <label>Company Landmark:</label>
                    <input type="text" name="companyLandmark">
                </div>
                <div class="form-row">
                    <label>Work Experience (Current Company):</label>
                    <input type="number" name="experienceCurrent" min="0" step="0.1"> Years
                </div>
                <div class="form-row">
                    <label>Total Work Experience:</label>
                    <input type="number" name="experienceTotal" min="0" step="0.1"> Years
                </div>
            </section>

            <section>
                <h2>Address Details</h2>
                <div class="form-row">
                    <label>Current Address:</label>
                    <input type="text" name="currentAddress">
                </div>
                <div class="form-row">
                    <label>Current Address Landmark:</label>
                    <input type="text" name="currentLandmark">
                </div>
                <div class="form-row">
                    <label>Current Address Type:</label>
                    <label><input type="radio" name="currentType" value="Owned"> Owned</label>
                    <label><input type="radio" name="currentType" value="Rented"> Rented</label>
                </div>
                <div class="form-row">
                    <label>Years at Current Address:</label>
                    <input type="number" name="yearsCurrent" min="0">
                </div>
                <div class="form-row">
                    <label>Years in Mumbai:</label>
                    <input type="number" name="yearsMumbai" min="0">
                </div>
                <div class="form-row">
                    <label>Permanent Address:</label>
                    <input type="text" name="permanentAddress">
                </div>
                <div class="form-row">
                    <label>Permanent Address Landmark:</label>
                    <input type="text" name="permanentLandmark">
                </div>
                <div class="form-row">
                    <label>STD Code & Mobile (Permanent):</label>
                    <input type="text" name="stdPermanent">
                </div>
            </section>

            <section>
                <h2>Banking Details</h2>
                <div class="form-row">
                    <label>Salary Account Bank Name:</label>
                    <input type="text" name="bankName">
                </div>
                <div class="form-row">
                    <label>Salary Account Opening Year:</label>
                    <input type="number" name="bankYear" min="1900" max="2099">
                </div>
                <div class="form-row">
                    <label>Monthly Net Salary (in ₹):</label>
                    <input type="number" name="netSalary" min="0">
                </div>
                <div class="form-row">
                    <label>Mode of Salary:</label>
                    <label><input type="radio" name="salaryMode" value="Bank Transfer"> Bank Transfer</label>
                    <label><input type="radio" name="salaryMode" value="Cheque"> Cheque</label>
                    <label><input type="radio" name="salaryMode" value="Cash"> Cash</label>
                </div>
                <div class="form-row">
                    <label>Other Bank Accounts (if any):</label>
                    <input type="text" name="otherBanks">
                </div>
            </section>

            <section>
                <h2>Reference Details</h2>
                <div class="form-row">
                    <strong>1. Relative Reference</strong>
                </div>
                <div class="form-row">
                    <label>Name:</label>
                    <input type="text" name="relativeName">
                </div>
                <div class="form-row">
                    <label>Contact No.:</label>
                    <input type="text" name="relativeContact">
                </div>
                <div class="form-row">
                    <label>Address:</label>
                    <input type="text" name="relativeAddress">
                </div>
                <div class="form-row">
                    <strong>2. Friend Reference</strong>
                </div>
                <div class="form-row">
                    <label>Name:</label>
                    <input type="text" name="friendName">
                </div>
                <div class="form-row">
                    <label>Contact No.:</label>
                    <input type="text" name="friendContact">
                </div>
                <div class="form-row">
                    <label>Address:</label>
                    <input type="text" name="friendAddress">
                </div>
            </section>

            <section>
                <h2>Loan Purpose</h2>
                <div class="form-row check-list">
                    <label><input type="checkbox" name="loanPurpose" value="New Car Loan"> New Car Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Used Car Loan"> Used Car Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Commercial Vehicle Loan"> Commercial Vehicle Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Machinery Loan"> Machinery Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Home Loan"> Home Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Loan Against Property"> Loan Against Property</label>
                    <label><input type="checkbox" name="loanPurpose" value="Business Loan"> Business Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Personal Loan"> Personal Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Balance Transfer"> Balance Transfer</label>
                    <label><input type="checkbox" name="loanPurpose" value="Top-Up Loan"> Top-Up Loan</label>
                    <label><input type="checkbox" name="loanPurpose" value="Others"> Others (specify): <input type="text" name="loanPurposeOther" style="width:150px;margin-left:5px;"></label>
                </div>
            </section>

            <section>
                <h2>Document Checklist <span class="optional">(optional – for loan officer)</span></h2>
                <div class="form-row check-list">
                    <label><input type="checkbox" name="docChecklist" value="PAN Card"> PAN Card</label>
                    <label><input type="checkbox" name="docChecklist" value="Aadhaar Card"> Aadhaar Card</label>
                    <label><input type="checkbox" name="docChecklist" value="Electricity Bill/Rent Agreement"> Electricity Bill / Rent Agreement</label>
                    <label><input type="checkbox" name="docChecklist" value="3 Months Salary Slips"> 3 Months Salary Slips</label>
                    <label><input type="checkbox" name="docChecklist" value="6 Months Bank Statement"> 6 Months Bank Statement</label>
                    <label><input type="checkbox" name="docChecklist" value="Company ID Card"> Company ID Card</label>
                    <label><input type="checkbox" name="docChecklist" value="ITR (2 Years)"> ITR (2 Years)</label>
                    <label><input type="checkbox" name="docChecklist" value="Property Papers (if applicable)"> Property Papers (if applicable)</label>
                    <label><input type="checkbox" name="docChecklist" value="Others"> Others: <input type="text" name="docChecklistOthers" style="width:150px;margin-left:5px;"></label>
                </div>
            </section>

            <div class="form-row submit-btn">
			    <button type="submit" class="form-action-btn submit">Submit</button>
			    <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
			</div>
        </form>
    </div>
</body>
</html>