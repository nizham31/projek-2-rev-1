<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Css/styles.css" rel="stylesheet">
    <title>Payment Successful</title>
    <style>
        body {
            background-color: lightslategray;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
            background-color: #343a40;
        }
        h2, h3, p {
            color: #ffffff;
        }
        a {
            color: #ffffff;
        }
        button {
            padding: 15px 25px;
            border: unset;
            border-radius: 15px;
            color: #212121;
            z-index: 1;
            background: #e8e8e8;
            position: relative;
            font-weight: 1000;
            font-size: 17px;
            -webkit-box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
            box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
            transition: all 250ms;
            overflow: hidden;
        }
        button::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 0;
            border-radius: 15px;
            background-color: #212121;
            z-index: -1;
            -webkit-box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
            box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
            transition: all 250ms;
        }
        button:hover {
            color: #e8e8e8;
        }
        button:hover::before {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Payment Successful</h2>
        <p>Thank you for your payment. Your booking has been confirmed.</p>

        <h3>Receipt</h3>
        <p>Customer ID: <%= request.getAttribute("custID") %></p>
        <p>Room ID: <%= request.getAttribute("roomID") %></p>
        <p>Check-in Date: <%= request.getAttribute("checkIn") %></p>
        <p>Check-out Date: <%= request.getAttribute("checkOut") %></p>
        <p>Total Price: $<%= request.getAttribute("totalPrice") %></p>

        <a href="home.jsp" class="btn btn-primary btn-block">Go to Homepage</a>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>