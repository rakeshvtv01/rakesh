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
            background-image: url("https://avante.biz/wp-content/uploads/Wallpaper-Rain/Wallpaper-Rain-040.jpg");
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

<table>
    <tr>
        <td width="65%">
<div style=" margin-left: 20px; ">
    <form class="pure-form" method="get" action="login_validate">
    <fieldset>
        <legend>User Login</legend>

        <input type="email" placeholder="Email" name="email" id="email" required><br><br>
        <input type="password" placeholder="Password" name="pass" id="pass" required><br>

        <br>

        <button type="submit" name="login" class="pure-button pure-button-primary" onclick="return calVal()">Sign in</button>
        <button type="reset" class="pure-button pure-button-primary">Clear</button>
        <br><br>
        <a href="emp_register.html"> Not Registered?? Click here</a>
     ${name}
    </fieldset>
</form>
</div>
        </td>
        <td width="5%">

        </td>
        <td>
<div style=" margin-right: 20px" >

    <h3>5 Reasons Why Cloud Security is Important</h3>
    <p class="foo3">
        <marquee direction="up" scrollamount="2">
       <ul style="text-decoration:underline">
           <li> <p>Security Breaches Are Always Big News</p></li>
           <li> <p>All Service Providers Aren’t Equal</p></li>
           <li> <p>Know Where Your Data is Stored</p></li>
           <li> <p>Security Roles Should be Clearly Defined</p></li>
           <li> <p>Backing up Data is Just as Important</p></li>


       </ul>
    </marquee>
    </p>
</div>
    </td>
    </tr>
</table>



<footer>
    <br>
<p align="center" style="color: white" class="foo3">copyrights @TechCiti.com</p>
</footer>
<p> ${login_stats}</p>
<p> ${n1}</p>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
