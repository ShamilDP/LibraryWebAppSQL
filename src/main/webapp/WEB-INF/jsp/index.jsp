<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        body{
            background-color: #cccccc;
            background-image: linear-gradient(darkgoldenrod,white);


        }
        h1{
            background-color: darkgoldenrod;
            text-align: center;
            width: 600px;
            margin-left: 450px;
            margin-top: 20px;
            text-decoration-style: dotted;
        }
        h2{
            background-color: burlywood;
            text-align: center;
            margin-top: 100px;
            width: 200px;
            margin-left: 550px;
        }
        .navigation{
            text-align: center;
            background-color: darkgrey;
            width: 100px;
            margin-left: 80px;
        }
        img{
            float: left;
            width: 20%;
        }
    </style>

</head>
<body>
<img src="/images/logo.png">
<h1 >Library Management System</h1>
<h2 >Book List</h2>
<div class="navigation">
    <a href="login">Login</a>
</div>
<div align="center">
${books}
</div>


</body>
</html>
