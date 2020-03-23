<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>

        h1{
            color: darkblue;
            text-align: center;
            margin-left: 0px;
            margin-top: 10px;
            padding-top: 20px;
        }
        h2{
           color: black;
            text-align: center;
            margin-top: 70px;
            width: 200px;
            margin-left: 550px;
        }
        .books{
            width: 50px;
            height: 50px;
        }
        .pos-f-t{
            background-size: cover;
        }
        .collapse{
            background-size: cover;
        }
        footer{
            background-color: yellowgreen;
        }
        th{
            align-content: center;
            background-blend-mode: luminosity;
        }
        table{
            background-size: cover;
            background-color: azure;
        }
        th{
            text-align: center;
            font-family: "Sitka Heading";
            color: darkcyan;
        }
        td{
            text-align: center;
        }
        table{
            background-size: cover;
        }
        body{
            background: rgba(76, 175, 80, 0.3);
        }
        .mbr-overlay{
            background-image: url("/images/header.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        p{
            color: white;
            text-align: center;
        }

    </style>

</head>
<body>

<%-- ----------------------------------------------------------------------------------------------------------------   --%>
<section class="menu cid-rbmbAelA8q" once="menu" id="menu1-0">
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="navbar-buttons mbr-section-btn">
                <c:if test="${checkLogin != null}">
                    <div ali>
                        <form action="/log" method="post">
                            <input class="btn btn-outline-danger" type="submit" value="Log Out"/>
                        </form>
                    </div>
                </c:if>
                <c:if test="${checkLogin == null}">
                    <div>
                        <form action="/login" method="post">
                            <input class="btn btn-outline-success" type="submit" value="Log In"/>
                        </form>
                    </div>
                </c:if>
            </div>
        </div>
    </nav>
</section>

<section class="header6 cid-rbmbBFs5NT" id="header6-1">
    <div class="mbr-overlay" style="opacity: 0.4;">

    <div class="container align-left">
        <div class="row justify-content-center">
            <div class="media-container-column mbr-white col-md-10">
                <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-1">Library Management System</h2>
                <h1 >Book List</h1>
            </div>
        </div>
    </div>

    </div>
</section>

<%-- ------------------------------------------------------------------------------------------------------------ --%>

<div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
        <div class="bg-dark p-4">
            <c:if test="${checkLogin != null}">
                <div >
                    <p>${checkLogin}</p>

                </div>
            </c:if>
            <c:if test="${checkLogin == null}">
                <div >
                    <p>Hi.. Login and add your own book.</p>
                </div>
            </c:if>
        </div>

    </div>
    <nav class="navbar navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
                aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
</div>

<%-- ------------------------------------------------------------------------------------------------------------- --%>
<table width="1000px" align="center" border="0" cellpadding="10px">
    <thead>
    <tr>
        <th>Book Name</th>
        <th>Author</th>
        <th>Book Count</th>
    </tr>
    </thead>

    <tbody>
    <c:set var="i" value="1" />
    <c:forEach items="${books}" var="u">
        <tr>
            <td>${u.bookName}</td>
            <td>${u.author}</td>
            <td>${u.copyCount}</td>
            <td><img class="books" src=${u.coverImage} ></td>
        </tr>
        <c:set var="i" value="${i+1}" />
    </c:forEach>
    </tbody>
</table>


<footer class="page-footer font-small teal pt-4">
    <div class="container-fluid text-center text-md-left">
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3">
                <h5 class="text-uppercase font-weight-bold">Library System</h5>
                <p>You can manage your own lybrary here. If you are
                an authorized person for the system you can log in to the system
                and add your own book.</p>

            </div>
            <hr class="clearfix w-100 d-md-none pb-3">
            <div class="col-md-6 mb-md-0 mb-3">
                <h5 class="text-uppercase font-weight-bold">Contact Info: </h5>
                <p>Address: No 13/8, Darly Road, Colombo 2 <br>
                Tel: 0112345678<br>
                E-mail: librarysystem.lk</p>
            </div>
        </div>
    </div>
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="https://mdbootstrap.com/"> LibraryManagement.com</a>
    </div>
</footer>

</body>
</html>
