<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>
<% if(response.getStatus() == 500) %>
<font color="red">Error: <%=exception.getMessage() %></font><br>

<% if(response.getStatus() == 404) %>
<font color="red">Error: Faqja nuk u gjend</font><br>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>