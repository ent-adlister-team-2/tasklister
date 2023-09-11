<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Tasklister!" />
    </jsp:include>
</head>
<body class="background">
    <jsp:include page="partials/navbar.jsp" />
    <div class="container login-box">
        <h1 class="title">Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="user-box">
                <label for="username"></label>
                <input id="username" name="username" class="form-control" type="text" placeholder="Enter a Username">
            </div>
            <div class="user-box">
                <label for="email"></label>
                <input id="email" name="email" class="form-control" type="text" placeholder="Enter Your Email">
            </div>
            <div class="user-box">
                <label for="password"></label>
                <input id="password" name="password" class="form-control" type="password" placeholder="Enter in a Password">
            </div>
            <div class="user-box">
                <label for="confirm_password"></label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" placeholder=" Confirm Password">
            </div>
            <a href="">
                <input class="submit-btn" type="submit">
                Submit
                <span></span>
            </a>
        </form>
    </div>
</body>
</html>
