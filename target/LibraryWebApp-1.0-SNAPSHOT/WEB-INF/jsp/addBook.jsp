<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .contentBody{
            border-style: solid;
            text-align: center;
            width: 500px;
            margin-left: 400px;
            margin-top: 80px;
            font-size: x-large;
            background-color: #cccccc;
            background-image: linear-gradient(burlywood,white);
        }
        .navigation{
            text-align: center;
            background-color: darkgrey;
            width: 100%;
            font-size: 20px;
            margin-top: 100px;
        }
        .greet{
            float: right;
            color: yellow;
            text-align: right;
        }
        body{
            background-image: url("/images/backgroundAddBook.jpeg");
            background-repeat: no-repeat;
            background-size: cover;

        }
        h1{
            text-align: center;
            text-decoration-style: double;
            color: antiquewhite;
        }
        footer{
            background: rgba(76, 175, 80, 0.3);
        }
        .card-body{
            background: rgba(15, 15, 125, 0.3);
        }


    </style>
</head>

<body>
<h1>Add Book</h1>
<div align="right">
    ${checkLogin}
</div>
<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Login Successful!</h4>
    <p>You can add your own book details here</p>
</div>

<%--<form  action="/addBook" method="post" model="addBook">--%>

<%--    <div class="contentBody">--%>
<%--    <p>Book Name: <input type="text" placeholder="Book Name" name="bookName" /></p>--%>
<%--    <p>Auther Name: <input type="text" placeholder="Author Name" name="authorName" /></p>--%>
<%--    <p>Book Count: <input type="number" placeholder="Copy Count (Numbers only)" name="bookCount" /></p>--%>
<%--    <p>Cover Image Link: <input type="url" placeholder="Cover Image Link" name="coverImage" /></p>--%>

<%--&lt;%&ndash;    <p><input type="submit" value="Submit" /> <input type="reset" value="Reset"/></p>&ndash;%&gt;--%>
<%--        <p><input class="btn btn-primary" type="submit" value="Submit">--%>
<%--            <input class="btn btn-primary" type="reset" value="Reset"></p>--%>
<%--    </div>--%>
<%--</form>--%>

<div class="card-body">
    <form  action="/addBook" method="post" model="addBook">
        <div class="input-group form-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-book">Book Name</i></span>
            </div>
            <input type="text" placeholder="Book Name" name="bookName" class="form-control"/>

        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-male">Author</i></span>
            </div>
            <input type="text" placeholder="Author Name" name="authorName" class="form-control" />
        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-book">Book Count</i></span>
            </div>
            <input type="number" placeholder="Copy Count (Numbers only)" name="bookCount" class="form-control" />
        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-picture-o">Image Link</i></span>
            </div>
            <input type="url" placeholder="Cover Image Link" name="coverImage" class="form-control"/>
        </div>
        <div class="form-group">
            <input class="btn btn-primary" type="submit" value="Submit">
            <input class="btn btn-primary" type="reset" value="Reset">
        </div>
    </form>
</div>

<footer class="page-footer font-small unique-color-dark pt-4">
    <div class="container">
        <ul class="list-unstyled list-inline text-center py-2">
            <li class="list-inline-item">
                <form action="/log" method="post">
                    <input class="btn btn-outline-danger" type="submit" value="Log Out"/>
                </form>
            </li>
            <li class="list-inline-item">
                <form action="/index" method="get">
                    <input class="btn btn-outline-success" type="submit" value="Home Page"/>
                </form>
            </li>
        </ul>
    </div>
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="#"> www.librarysystem.com</a>
    </div>
</footer>


</body>
</html>
