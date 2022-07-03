<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style/styles.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <title>Na kontaktoni</title>
    <link rel="icon" type="image/png" href="img/logo.png">
</head>

<body>
<?php 
        $link = mysqli_connect("localhost", "root", "", "cinema_db");
?>
    <header></header>
    <div class="gmap_canvas"><iframe id="gmap_canvas" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23479.80198512331!2d21.123360518730358!3d42.640684686328534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13549e8867f0daf9%3A0xbf5af60cc3bb87aa!2sKalabria%2C%20Pristina!5e0!3m2!1sen!2s!4v1656880518153!5m2!1sen!2s" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
    </div>
    <div class="contact-us-container">
        <div class="contact-us-section contact-us-section1">
            <h1>Kontakti</h1>
            <p>Na kontaktoni ketu </p>
            <form action="" method="POST">
                <input placeholder="Emri" name="fName" required><br>
                <input placeholder="Mbiemri" name="lName" ><br>
                <input placeholder="E-mail Adresa" name="eMail" required><br>
                <textarea placeholder="Shenoni mesazhin tuaj !" name="feedback" rows="10" cols="30" required></textarea><br>
                <button type="submit" name="submit" value="submit">Dergoni nje mesazh</button>
                <?php
                    if(isset($_POST['submit'])){
                        $insert_query = "INSERT INTO 
                        feedbackTable ( senderfName,
                                        senderlName,
                                        sendereMail,
                                        senderfeedback)
                        VALUES (        '".$_POST["fName"]."',
                                        '".$_POST["lName"]."',
                                        '".$_POST["eMail"]."',
                                        '".$_POST["feedback"]."')";
                        mysqli_query($link,$insert_query);
                        }
                    ?>
            </form>
            
        </div>
        <div class="contact-us-section contact-us-section2">
            <h1>Adresa & Informata</h1>
            <h3>Numri i telefonit</h3>
            <p><a href="tel:03850550555">0038345289362</a><br>
                <a href="tel:38345255255">+383 45 289 362</a></p>
            <h3>Adresa</h3>
            <p>Prishtine, Lagjja "Kalabria" , Prishtine 10000 </p>
            <h3>E-mail</h3>
            <p><a href="mailto:movie-ticket-booking@bqn.net">movie-ticket-booking@ubt-uni.net</a></p>
        </div>
    </div>
    <footer></footer>
    <script src="./scripts/jquery-3.3.1.min.js "></script>
    <script src="./scripts/owl.carousel.min.js "></script>
    <script src="./scripts/script.js "></script>
</body>

</html>