<%@page import="com.rakeshkp.spring.Database"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" import="java.sql.*" errorPage="index.jsp" %>


<% 



if(session.getAttribute("userid")==null)
session.setAttribute("userid", request.getAttribute("userid"));

Database d2=new Database();

int temp=(Integer)session.getAttribute("userid");
d2.connectdb();
PreparedStatement pre = d2.con.prepareStatement("select * from users where id =?");     
pre.setInt(1,temp); 
ResultSet rs = pre.executeQuery(); 
if(rs.next()) 
    { 
        System.out.println("Name= "+rs.getString(1)); 
        System.out.println("USN= "+rs.getString(2)); 
        System.out.println("Result= "+rs.getString(3)); 
     
 } 
else 
{ 
      System.out.println("SELECTION FAILED"); 
    
} 



  



%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="toast/dist/css/iziToast.min.css">
    <script src="toast/dist/js/iziToast.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/base-min.css">



    <title>dashboard</title>
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
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">View profile</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="edit" class="pure-menu-link" style="color: white">Edit profile</a></li>
        <li class="pure-menu-item pure-menu-selected foo4"><a href="index?logout=yes" class="pure-menu-link" style="color: white">Logout</a></li>

  

    </ul>
</div>
<br>
<br>

<center>
<legend>Your Profile</legend><br><br>
<table class="pure-table pure-table-horizontal">
    <thead>
        <tr>
            <th>#</th>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>MOBILE</th>
            <th>ADDRESS</th>
            <th>DOB</th>
            <th>GENDER</th>
        </tr>
    </thead>

    <tbody>
        <tr>
            <td>1</td>
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><%= rs.getString(6) %></td>
            <td><%= rs.getString(7) %></td>
            <td><%= rs.getString(8) %></td>
        </tr>

      
</table>
</center>


<br><br>
<footer>
    <br>
<p align="center" style="color: white" class="foo3">copyrights @rakeshkp</p>
</footer>

</body>
</html>
