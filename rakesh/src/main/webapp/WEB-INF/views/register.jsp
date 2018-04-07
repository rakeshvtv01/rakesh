<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="toast/dist/css/iziToast.min.css">
    <script src="toast/dist/js/iziToast.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/base-min.css">



    <title>Title</title>
    <style>
        h3{
            color: #5385c1;

        }
        p{
            color: #9a9a9a;
            margin: 0 0 2em 0;
            font-weight: lighter;
            font-size: smaller;
        }
        footer{
            background-color: #5385c1;

            bottom:0;
            width:100%;
            height:60px;   /* Height of the footer */


        }
        #banner{
            background-image: url("banner.jpg");
            height: 450px;
        }

    </style>


        <script>

        iziToast.error({
            title: 'Please Try Again',
            message: 'Email Id and Password not matching',
            backgroundColor:'#f44336',
            color:'#f44336',
            titleColor:'#fff',
            messageColor:'#fff',
            position: 'topRight',
            iconColor:'#fff',
            theme: 'light'

        });
    </script>



</head>
<body bgcolor="#fff">
<div id="banner">
    <br><br><br><br>
    <h3 align="center" class="foo3" style="color: #fff">Security Management Using Cloud aspects</h3>
</div>


<div class="pure-menu pure-menu-horizontal" style="background-color: #5385c1; height: 40px">
    <ul class="pure-menu-list foo">
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">Home</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="owner.html" class="pure-menu-link" style="color: white">Register</a></li>
        <li class="pure-menu-item pure-menu-selected foo4"><a href="admin.html" class="pure-menu-link" style="color: white">Login</a></li>

  

    </ul>
</div>
<br>
<br>
<center>
    <form class="pure-form" method="get" action="register_validate" id="register">
        <fieldset>
            <legend>Owner Login</legend>

            <input type="text" placeholder="Name" name="name" required ><br><br>
            <input type="password" placeholder="Password" id="pass" name="pass" required><br><br>
            <input type="password" placeholder="Confirm Password" id="cpass" name="cpass" required><br><br>
            <input type="email" placeholder="Email" name="email" required><br><br>
            <input type="number" placeholder="Contact Number" name="mob" maxlength="10" minlength="10" required><br><br>
            <input type="text" placeholder="Address" name="add" required><br><br>
             <input type="text" placeholder="DOB" name="dob" required><br><br>
            <label for="gender">Choose Gender</label><br>
            Male<input type="radio" name="gender"  id="male" value="male">
            Female <input type="radio" name="gender"  id="male" value="female">
             <br><br>
            <button type="submit" class="pure-button pure-button-primary" name="signup" onclick="return calVal()">Register</button>
            <button type="reset" class="pure-button pure-button-primary">Clear</button>
        </fieldset>
    </form>

</center>

<footer>
    <br>
<p align="center" style="color: white" class="foo3">copyrights @TechCiti.com</p>
</footer>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
