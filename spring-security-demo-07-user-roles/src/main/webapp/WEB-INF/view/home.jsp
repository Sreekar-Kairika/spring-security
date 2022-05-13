<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>


	<h2>luv2code Company Home Page</h2>

    <p>
        User : <security:authentication property="principal.username" />
        <br><br>
        Role(s) : <security:authentication property="principal.authorities" />
    </p>

    <br><br>
	Welcome to the luv2code company home page!
    <br><br>


    <form:form action="${pageContext.request.contextPath}/logout"
        method="POST">

            <input type="submit" value="Logout" />

    </form:form>


</body>

</html>