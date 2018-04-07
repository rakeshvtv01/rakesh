<%@page import="com.rakeshkp.spring.Database"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" import="java.sql.*" %>


<% 
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
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">View profile</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="owner.html" class="pure-menu-link" style="color: white">Edit profile</a></li>
        <li class="pure-menu-item pure-menu-selected foo4"><a href="admin.html" class="pure-menu-link" style="color: white">Logout</a></li>

  

    </ul>
</div>
<br>
<br>

<center>
<form class="pure-form" method="" action="">
    <fieldset>
<legend>Update or Edit Your Profile</legend><br><br>
<table class="pure-table pure-table-horizontal">
    <tbody>
        <tr>
         
            <tr><th>ID</th><td><%= rs.getString(1) %></td></tr>
            <tr><th>NAME</th> <td> <input class="foo3" type="text" placeholder="Email" name="name" id="name" value="<%= rs.getString(2) %>"></td></tr>
           <tr> <th>EMAIL</th> <td><input class="foo3" type="text" placeholder="Email" name="email" id="email" value="<%= rs.getString(4) %>"></td></tr>
            <tr> <th>MOBILE</th><td><input class="foo3" type="text" placeholder="Email" name="mob" id="mob" value="<%= rs.getString(5) %>"></td></tr>
            <tr> <th>ADDRESS</th> <td><input class="foo3" type="text" placeholder="Email" name="add" id="add" value="<%= rs.getString(6) %>"></td></tr>
            <tr> <th>DOB</th> <td><input class="foo3" type="text" placeholder="Email" name="dob" id="dob" value="<%= rs.getString(7) %>"></td></tr>
            <tr> <th>GENDER</th><td><input class="foo3" type="text" placeholder="Email" name="gender" id="gender" value="<%= rs.getString(8) %>"></td></tr>
        </tr>
  

</tbody>

      
</table>
<br><br>
 <button  type="submit" name="edit" class="pure-button pure-button-primary" value="update">Sign in</button>
        <button  type="reset" class="pure-button pure-button-primary">Clear</button>
        
         </fieldset>
</form>
</center>
<%= session.getAttribute("userid") %>


<footer>
    <br>
<p align="center" style="color: white" class="foo3">copyrights @TechCiti.com</p>
</footer>
<p> ${n1}</p>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>


<%

String x = request.getParameter("edit");
if(x!=null && x.equals("update"))
{
	System.out.println("success on function");
     d2.update(temp,request.getParameter("name"), Integer.parseInt(request.getParameter("mob")), request.getParameter("add"), request.getParameter("gender"), request.getParameter("dob"));
     
	
}
%>
