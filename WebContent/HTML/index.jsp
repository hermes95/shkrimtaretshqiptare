<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kryefaqja</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
	main {
	width:80%;
	margin:auto;
	padding-top:30px;
	padding-bottom:30px;
	min-height:500px;
	}
</style>
</head>
<body>
<!-- Header -->
<header>
<jsp:include page="../WEB-INF/header.jsp"></jsp:include>
</header>
<main>
<h1 class="text-center h4">Aplikacion i Web-it Semantik</h1>
<img src="<%= request.getContextPath()%>/../img/skema.png" />
</main>

<!-- Footer  -->
<footer>
<jsp:include page="../WEB-INF/footer.jsp"></jsp:include>

</footer>
</body>
</html>