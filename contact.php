<?php
include("config.php");

if($_SERVER["REQUEST_METHOD"]=="POST"){

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $subject = mysqli_real_escape_string($conn, $_POST['subject']);
    $message = mysqli_real_escape_string($conn, $_POST['message']);

    $query = "INSERT INTO contact(name,email,subject,messsage)
              VALUES('$name','$email','$subject','$message')";

    if(mysqli_query($conn,$query)){

        echo "<script>
        alert('Message Sent Successfully!👍');
        window.location.href='index.php';
        </script>";

        exit();

    }else{

        echo "<script>
        alert('Database Error!');
        window.history.back();
        </script>";

    }

}else{

    header("Location: index.php");
    exit();

}
?>