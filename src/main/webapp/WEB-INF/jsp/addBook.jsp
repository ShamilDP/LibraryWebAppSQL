<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <style>
        .contentBody{
            border-style: solid;
            text-align: center;
            width: 300px;
            margin-left: 500px;
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
        body{
            background-image: url("/images/backgroundAddBook.jpeg");
            background-repeat: no-repeat;
        }
        h1{
            text-align: center;
            text-decoration-style: double;
            color: antiquewhite;
        }
    </style>
</head>

<body>
<h1>Add Book</h1>

<form  action="/addBook" method="post" model="addBook">

    <div class="contentBody">
    <p>Book Name: <input type="text" placeholder="Book Name" name="bookName" /></p>
    <p>Auther Name: <input type="text" placeholder="Author Name" name="authorName" /></p>
    <p>Book Count: <input type="number" placeholder="Copy Count (Numbers only)" name="bookCount" /></p>
    <p>Cover Image Link: <input type="url" placeholder="Cover Image Link" name="coverImage" /></p>

    <p><input type="submit" value="Submit" /> <input type="reset" value="Reset"/></p>
    </div>
</form>

<div class="navigation">
<a href="/login">Log Out</a>
</div>

</body>
</html>
