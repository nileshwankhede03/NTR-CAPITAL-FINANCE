<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NTR | Feedback Form</title>
<link rel="stylesheet" href="feedback.css">
<link rel="icon" type="image/x-icon" href="images/logoNTR.ico">
</head>
<body>
<div class="feedback-container">
        <h1>We Value Your Feedback</h1>
        <form action="sendEmail" method="post">
            <div class="feedback-row">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="feedback-row">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="feedback-row">
                <label for="phone">Contact Number:</label>
                <input type="tel" id="phone" name="phone">
            </div>
            <div class="feedback-row">
                <label for="rating">Service Rating:</label>
                <select id="rating" name="rating" required>
                    <option value="">--Select--</option>
                    <option value="5">Excellent</option>
                    <option value="4">Very Good</option>
                    <option value="3">Good</option>
                    <option value="2">Average</option>
                    <option value="1">Poor</option>
                </select>
            </div>
            <div class="feedback-row">
                <label for="comments">Your Feedback:</label>
                <textarea id="comments" name="comments" rows="4" required></textarea>
            </div>
            <div class="feedback-actions">
                <button type="submit" class="form-action-btn submit">Submit</button>
                <button type="button" class="form-action-btn back" onclick="window.location.href='Profile.jsp';">Back to Dashboard</button>
            </div>
        </form>
    </div>
</body>
</html>