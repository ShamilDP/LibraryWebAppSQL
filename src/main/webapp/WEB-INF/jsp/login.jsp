<%--<html>--%>
<%--<head>--%>
<%--    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet"/>--%>
<%--    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>
<%--    <style>--%>
<%--        body{--%>
<%--            background-image: url("/images/background.jpg");--%>
<%--            background-repeat: no-repeat;--%>
<%--            background-size: cover;--%>

<%--        }--%>
<%--        .loginForm{--%>
<%--            border-style: solid;--%>
<%--            text-align: center;--%>
<%--            height: 180px;--%>
<%--            background-color: #cccccc;--%>
<%--            background-image: linear-gradient(burlywood,white);--%>
<%--            width: 400px;--%>
<%--            margin-left: 450px;--%>
<%--            margin-top: 130px;--%>
<%--            padding: 10px;--%>

<%--        }--%>
<%--        .navigation{--%>
<%--            text-align: center;--%>
<%--            background-color: darkgrey;--%>
<%--            width: 100%;--%>
<%--            font-size: 20px;--%>
<%--            margin-top: 190px;--%>
<%--        }--%>
<%--        h1{--%>
<%--            text-align: center;--%>
<%--            text-decoration-style: double;--%>
<%--            color: antiquewhite;--%>
<%--        }--%>
<%--        h2{--%>
<%--            text-align: center;--%>
<%--            color: white;--%>
<%--            text-decoration-style: dashed;--%>
<%--        }--%>
<%--        .card{--%>
<%--            background-color: darkcyan;--%>
<%--        }--%>
<%--        .video{--%>
<%--            size: portrait;--%>
<%--        }--%>
<%--        header{--%>
<%--            overflow: hidden;--%>

<%--        }--%>
<%--        .container h-100{--%>
<%--            position: absolute;--%>
<%--        }--%>


<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>


<%--&lt;%&ndash;<h1>Welcome</h1>&ndash;%&gt;--%>

<%--&lt;%&ndash;<h2>Login Form</h2>&ndash;%&gt;--%>



<%--<form  action="/login" method="post" model="login">--%>

<%--    <div class="loginForm">--%>
<%--    <p>User Name: <input type="text" placeholder="Uder ID" name="userName" /></p>--%>
<%--    <p>Password: <input type="password" placeholder="Password" name="password" /></p>--%>
<%--    <p><input class="btn btn-outline-success" type="submit" value="Submit" /> <input class="btn btn-outline-danger" type="reset" value="Reset"/></p>--%>
<%--    </div>--%>

<%--</form>--%>

<%--<div class="row">--%>
<%--    <div class="col-sm-6">--%>
<%--        <div class="card">--%>
<%--            <div class="card-header">About</div>--%>
<%--            <div class="card-body">--%>
<%--                <p class="card-text">This library contains over 5000 leading publications. Refer them safely and return--%>
<%--                    them once you read it. Have a nice day</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="col-sm-6">--%>
<%--        <div class="card">--%>
<%--            <div class="card-header">Contact Us</div>--%>
<%--            <div class="card-body">--%>
<%--                <p class="card-text">No. 123/3 Darly Road, Colombo 10 <br> 0112345678</p>--%>
<%--            </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <style>
        @import url('https://fonts.googleapis.com/css?family=Numans');

        html,body{
            background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100%;
            font-family: 'Numans', sans-serif;
        }

        .container{
            height: 100%;
            align-content: center;
        }

        .card{
            height: 370px;
            margin-top: auto;
            margin-bottom: auto;
            width: 400px;
            background-color: rgba(0,0,0,0.5) !important;
        }

        .social_icon span{
            font-size: 60px;
            margin-left: 10px;
            color: #FFC312;
        }

        .social_icon span:hover{
            color: white;
            cursor: pointer;
        }

        .card-header h3{
            color: white;
        }

        .social_icon{
            position: absolute;
            right: 20px;
            top: -45px;
        }

        .input-group-prepend span{
            width: 50px;
            background-color: #FFC312;
            color: black;
            border:0 !important;
        }

        input:focus{
            /*outline: 0 0 0 0  !important;*/
            box-shadow: 0 0 0 0 !important;

        }

        .remember{
            color: white;
        }

        .remember input
        {
            width: 20px;
            height: 20px;
            margin-left: 15px;
            margin-right: 5px;
        }

        .login_btn{
            color: black;
            background-color: #FFC312;
            width: 100px;
        }

        .login_btn:hover{
            color: black;
            background-color: white;
        }

        .links{
            color: white;
        }

        .links a{
            margin-left: 4px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign In</h3>
                <div class="d-flex justify-content-end social_icon">
                    <span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-google-plus-square"></i></span>
                    <span><i class="fab fa-twitter-square"></i></span>
                </div>
            </div>
            <div class="card-body">
                <form action="/login" method="post" model="login">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" placeholder="Uder ID" name="userName" class="form-control"/>

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" placeholder="Password" name="password" class="form-control"/>
                    </div>
                    <div class="row align-items-center remember">
                        <input type="checkbox">Remember Me
                    </div>
                    <div class="form-group">
                        <input class="btn float-right login_btn" type="submit" value="Submit" />
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="#">Sign Up</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="#">Forgot your password?</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>