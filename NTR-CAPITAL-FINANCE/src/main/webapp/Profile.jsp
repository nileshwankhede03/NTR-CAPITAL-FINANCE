<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Profile | NTR - CAPITAL FINANCE</title>
    <link rel="stylesheet" href="Profile.css">
    <link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="bg-wrap">
    <img src="NTR-Logo.jpeg" alt="" class="bg-img">
  </div>
  <div class="overlay"></div>

  <div class="profile-container">
    <!-- Sidebar -->
    <aside class="sidebar">
      <img src="images/avtar.avif" alt="Avatar" class="avatar">
      <h2> ${onFrontName} </h2>
      <p> ${onFrontEmail} </p>
      <nav>
        <a href="Services.jsp">Services</a>
        <a href="documents.jsp">Documents - Details</a>
        <a href="Personal - Details.jsp">Personal - Details Form</a>
        <a href="PersonalLoan.jsp"> Personal Loan</a>
        <a href="BusinessLoan.jsp"> Business Loan</a>
        <a href="HomeLoan.jsp"> Home Loan </a>
        <a href="LoanAgainstProperty.jsp"> Loan Against Property</a>
        <a href="NewVehicleLoan.jsp"> New Vehicle Loan</a>
        <a href="UsedVehicleLoan.jsp"> Used Vehicle Loan</a>
        <a href="MachineMedical.jsp"> Machinery/Medical equipment Loan</a>
        <a href="FAQ.html">FAQ</a>
        <a href="feedback.jsp">Feedback Form</a>
        <a href="welcome.html" class="logout">Log Out</a>
      </nav>
    </aside>

    <!-- Main content -->
    <main class="main-content">
      <!-- 1) Summary -->
      <section id="summary">
        <h3>Account Summary</h3>
        <div class="cards">
          <div class="card">
            <h4>Total Assets</h4>
            <p>0 ₹</p>
          </div>
          <div class="card">
            <h4>Total Liabilities</h4>
            <p>0 ₹</p>
          </div>
          <div class="card">
            <h4>Net Worth</h4>
            <p>0 ₹</p>
          </div>
        </div>
      </section>

      <!-- 2) Personal Details -->
      <section id="details">
        <h3>Personal Details</h3>
        <dl>
          <dt>Full Name</dt><dd>${onFrontName}</dd>
          <dt>Email</dt><dd>${onFrontEmail}</dd>
          <dt>Phone</dt><dd>+91 ${OnFrontPhone} </dd>
<!--           <dt>Address</dt><dd>Kothrud 12, Pune, India</dd>
 -->          <dt>Verification</dt><dd><span class="badge verified">Verified</span></dd>
        </dl>
      </section>

<!--       3) Recent Activity
      <section id="activity">
        <h3>Recent Activity</h3>
        <ul class="activity-list">
          <li>— $200 payment to Vendor A <span>2025-07-20</span></li>
          <li>— Received $1,000 from Client B <span>2025-07-18</span></li>
          …
        </ul>
        <a href="/transactions" class="view-all">View All Transactions</a>
      </section> -->

      
    </main>
  </div>
</body>
</html>