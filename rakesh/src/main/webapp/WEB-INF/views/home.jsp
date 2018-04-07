<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	   <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/base-min.css">
</head>
<body>

<div class="pure-menu pure-menu-horizontal" style="background-color: #5385c1;">
    <ul class="pure-menu-list foo">
        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">Home</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="owner.html" class="pure-menu-link" style="color: white">Owner</a></li>
        <li class="pure-menu-item pure-menu-selected foo4"><a href="admin.html" class="pure-menu-link" style="color: white">Admin</a></li>

        <li class="pure-menu-item pure-menu-selected foo4"><a href="#" class="pure-menu-link" style="color: white">Client</a></li>

    </ul>
</div>
<br>
<br>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
