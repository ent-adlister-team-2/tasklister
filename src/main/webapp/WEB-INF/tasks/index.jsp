<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the tasks!</h1>

    <c:forEach var="task" items="${tasks}">
        <div class="col-md-6">
            <h2>${task.title}</h2>
            <p>${task.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>