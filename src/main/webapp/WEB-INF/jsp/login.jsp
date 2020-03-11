<html>
<head>
    <style>
        body{
            background-image: url("/images/background.jpg");
            background-repeat: no-repeat;

        }
        .loginForm{
            border-style: solid;
            text-align: center;
            height: 180px;
            background-color: #cccccc;
            background-image: linear-gradient(burlywood,white);
            width: 400px;
            margin-left: 450px;
            margin-top: 130px;

        }
        .navigation{
            text-align: center;
            background-color: darkgrey;
            width: 100%;
            font-size: 20px;
            margin-top: 190px;
        }
        h1{
            text-align: center;
            text-decoration-style: double;
            color: antiquewhite;
        }
        h2{
            text-align: center;
            color: white;
            text-decoration-style: dashed;
        }

    </style>
</head>
<body>
<h1>Welcome</h1>

<h2>Login Form</h2>


<form  action="/login" method="post" model="login">

    <div class="loginForm">
    <p>User Name: <input type="text" placeholder="Uder ID" name="userName" /></p>
    <p>Password: <input type="password" placeholder="Password" name="password" /></p>
    <p><input type="submit" value="Submit" /> <input type="reset" value="Reset"/></p>
    </div>

</form>

<div class="navigation">
<a href="index">Back</a>
</div>


</body>
</html>
