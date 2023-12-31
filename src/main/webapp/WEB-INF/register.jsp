<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Tasklister!"/>
    </jsp:include>
</head>
<body class="homepage-background">
<jsp:include page="partials/navbar.jsp"/>
<c:set var="usernameNotAvailable" value="${requestScope.usernameNotAvailable}"/>
<c:set var="emailNotAvailable" value="${requestScope.emailNotAvailable}"/>
<div class="container login-box">
    <h1 class="title">Please fill in your information.</h1>
    <form id="register-form" action="${pageContext.request.contextPath}/register" method="post">
        <c:if test="${not empty usernameNotAvailable}">
            <h2 style="color: white">Username not available.</h2>
        </c:if>
        <div class="user-box">
            <label for="username"></label>
            <input required id="username" name="username" class="form-control" type="text" placeholder="Enter a Username">
        </div>
        <c:if test="${not empty emailNotAvailable}">
            <h2 style="color: white">Email not available.</h2>
        </c:if>
        <div class="user-box">
            <label for="email"></label>
            <input required id="email" name="email" class="form-control" type="text" placeholder="Enter Your Email">
        </div>
        <div class="user-box">
            <label for="password"></label>
            <input required id="password" name="password" class="form-control" type="password" placeholder="Enter in a Password">
        </div>
        <div class="user-box">
            <label for="confirmPassword"></label>
            <input required id="confirmPassword" name="confirm_password" class="form-control" type="password"
                   placeholder=" Confirm Password">
        </div>
        <div class="column">
            <button type="submit">
                Submit
                <span></span>
            </button>
        </div>
    </form>
</div>
<script src="../js/register_validation.js"></script>
</body>
</html>
