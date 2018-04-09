<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" import="java.sql.*"  %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/iziToast.min.css">
    <script src="/resources/toast/dist/js/iziToast.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/base-min.css">
    
    



    <title>Witty</title>
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
    <h3 align="center" class="foo3" style="color: #fff">Witty Outfits</h3><br><br>
    <p align="center" class="foo3" style="color: #fff"> Intern assignment</p>
</div>


<div class="pure-menu pure-menu-horizontal" style="background-color: #5385c1; height: 40px">
    <ul class="pure-menu-list foo">
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">Home</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="register" class="pure-menu-link" style="color: white">Register</a></li>
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#login" class="pure-menu-link" style="color: white">Login</a></li>

  

    </ul>
</div>
<br>
<br>

<table>
    <tr>
        <td width="73%">
<div style=" margin-left: 10%; ">
    <form class="pure-form" method="get" action="login_validate">
    <fieldset>
        <legend id="login">User Login</legend>

        <input type="email" placeholder="Email" name="email" id="email" required><br><br>
        <input type="password" placeholder="Password" name="pass" id="pass" required><br>

        <br>

        <button type="submit" name="login" class="pure-button pure-button-primary" onclick="return calVal()">Sign in</button>
        <button type="reset" class="pure-button pure-button-primary">Clear</button>
        <br><br>
        <a href="register"> Not Registered?? Click here</a>
     ${name}
    </fieldset>
</form>
</div>
        </td>
        <td width="5%">

        </td>
        <td>
<div style=" margin-right: 20px" >

    <h3>Technologies and Tools </h3>
    <p class="foo3">
        <marquee direction="up" scrollamount="2">
       <ul style="text-decoration:underline">
           <li> <p>HTML, CSS, JAVASCRIPT, JSP </p></li>
           <li> <p>Java Spring MVC framework</p></li>
           <li> <p>MYSQL DATABASE</p></li>
           <li> <p>ECLIPSE IDE, MYSQL CONNECTOR</p></li>
           <li> <p>Backing up Data is Just as Important</p></li>


       </ul>
    </marquee>
    </p>
</div>
    </td>
    </tr>
</table>
<%
String msg="";
String msg1="";
String login=(String)request.getAttribute("login_stats");
String logout=(String)request.getParameter("logout");
if(request.getAttribute("login_stats")!=null){
	
	if(login.equals("fail")){
		msg="Login Unsuccesful! Please Try again";
	}
	
}


if(request.getParameter("logout")!=null){
	
	if(logout.equals("yes")){
		session.invalidate();
		msg1="logged out";
		System.out.println(""+msg);
	}
	
}

	%>

<h3 align="center"> <%= msg %><%= msg1 %></h3>
<footer>
    <br>
<p align="center" style="color: white" class="foo3">copyrights @rakeshkp</p>
</footer>

</body>
</html>
