<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>



<div class="form-container">
        <h2>Register Form</h2>
        <form id="registrationForm" action="register" method="POST">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" />
                <span class="error" id="nameError"></span>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" />
                <span class="error" id="emailError"></span>
            </div>
            <div class="form-group">
                <label for="number">Phone Number:</label>
                <input type="tel" id="number" name="number" />
                <span class="error" id="numberError"></span>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" />
                <span class="error" id="addressError"></span>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" />
                <span class="error" id="passwordError"></span>
            </div>
            <input type="submit" value="Register" />
        </form>
    </div>

  <script>
        document.getElementById("registrationForm").addEventListener("submit", function (event) {
            let valid = true;

            // Validate Name
            const name = document.getElementById("name").value.trim();
            const nameError = document.getElementById("nameError");
            if (!name) {
                nameError.textContent = "Name is required.";
                valid = false;
            } else {
                nameError.textContent = "";
            }

            // Validate Email
            const email = document.getElementById("email").value.trim();
            const emailError = document.getElementById("emailError");
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!email) {
                emailError.textContent = "Email is required.";
                valid = false;
            } else if (!emailPattern.test(email)) {
                emailError.textContent = "Enter a valid email address.";
                valid = false;
            } else {
                emailError.textContent = "";
            }

            // Validate Phone Number
            const number = document.getElementById("number").value.trim();
            const numberError = document.getElementById("numberError");
            const numberPattern = /^\d{10}$/;
            if (!number) {
                numberError.textContent = "Phone number is required.";
                valid = false;
            } else if (!numberPattern.test(number)) {
                numberError.textContent = "Enter a valid 10-digit phone number.";
                valid = false;
            } else {
                numberError.textContent = "";
            }

            // Validate Address
            const address = document.getElementById("address").value.trim();
            const addressError = document.getElementById("addressError");
            if (!address) {
                addressError.textContent = "Address is required.";
                valid = false;
            } else {
                addressError.textContent = "";
            }

            // Validate Password
            const password = document.getElementById("password").value.trim();
            const passwordError = document.getElementById("passwordError");
            if (!password) {
                passwordError.textContent = "Password is required.";
                valid = false;
            } else if (password.length < 6) {
                passwordError.textContent = "Password must be at least 6 characters.";
                valid = false;
            } else {
                passwordError.textContent = "";
            }

            // Prevent form submission if validation fails
            if (!valid) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>