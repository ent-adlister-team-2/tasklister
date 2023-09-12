<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp"/>
    <title>Title</title>
</head>
<body class="homepage-background">
<div class="page-wrapper">
    <c:set var="emailNotAvailable" value="${requestScope.emailNotAvailable}"/>
    <jsp:include page="../partials/navbar.jsp"/>
    <div class="container login-box">
        <h1 class="title">Change Email</h1>

        <c:if test="${not empty emailNotAvailable}">
            <h2 style="color: white">Email not available.</h2>
        </c:if>
        <form id="change-email-form" action="${pageContext.request.contextPath}/profile/change-email" method="POST">
            <div class="user-box">
                <label for="password"></label>
                <input id="password" name="password" class="form-control" type="password" placeholder="Password">
            </div>
            <div class="user-box">
                <label for="old-email"></label>
                <input id="old-email" name="old-email" class="form-control" type="text" placeholder="Old Email">
            </div>
            <div class="user-box">
                <label for="new-email"></label>
                <input id="new-email" name="new-email" class="form-control" type="text" placeholder="New Email">
            </div>
            <c:if test="${requestScope.emailNotAvailable == true && requestScope.emailNotAvailable != null}">
                <div class="alert alert-danger">
                    The email you selected is not available! Please choose a different email.
                </div>
            </c:if>
            <div class="column">
                <button type="submit">
                    Submit
                    <span></span>
                </button>
            </div>
        </form>
    </div>

</div>

<script src="../../js/email_validation.js"></script>
</body>
</html>