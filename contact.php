<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact - Chandigarh College of Engineering and Technology</title>
<link rel="stylesheet" type="text/css" href="contactstyle.css">

</head>
<body>

<?php 
    require("./connection.php");
    require("./navbar.php");
    ?>

<div class="container">
    <h1>Contact Chandigarh College of Engineering and Technology</h1>
    
    <div class="contact-info">
        <p><strong>Address:</strong> Chandigarh College of Engineering and Technology, Sector 26, Chandigarh, India</p>
        <p><strong>Phone:</strong> +91 XXXXXXXXXX</p>
        <p><strong>Email:</strong> info@ccet.ac.in</p>
    </div>

    <div class="contact-form">
        <h2>Send us a message</h2>
        <form action="#" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" required></textarea>
            <input type="submit" value="Send Message">
        </form>
    </div>
</div>

<script>
    function submitForm() {
        // Get form data
        var name = document.getElementById('contactForm').elements['name'].value;
        var email = document.getElementById('contactForm').elements['email'].value;
        var message = document.getElementById('contactForm').elements['message'].value;

        // Display form data
        alert("Name: " + name + "\nEmail: " + email + "\nMessage: " + message);
    }
</script>

</body>
</html>
