<?php

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get the form fields and remove whitespace.
        $name = strip_tags(trim($_POST["name"]));
        $name = str_replace(array("\r","\n"),array(" "," "),$name);
        $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
        $subject = trim($_POST["subject"]);
        $number = trim($_POST["number"]);
        $message = trim($_POST["message"]);

        if ( empty($name) OR empty($message) OR empty($number) OR empty($subject) OR !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Set a 400 (bad request) response code and exit.
            http_response_code(400);
            echo "Please complete the form and try again.";
            exit;
        }
        $recipient = "maxsteam53@gmail.com";
        $subject = "Their Industry $subject";
        $email_content = "Name: $name\n";
        $email_content .= "Subject: $subject\n";
        $email_content .= "Email: $email\n";
        $email_content .= "Number: $number\n\n";
        $email_content .= "Message:\n$message\n";
        $email_headers = "From: $name <$email>";
        if (mail($recipient, $subject, $email_content, $email_headers)) {
            http_response_code(200);
            echo "Thank You! Your message has been sent.";
        } else {
            http_response_code(500);
            echo "Oops! Something went wrong and we couldn't send your message.";
        }
    } else {
        http_response_code(403);
        echo "There was a problem with your submission, please try again.";
    }

?>
