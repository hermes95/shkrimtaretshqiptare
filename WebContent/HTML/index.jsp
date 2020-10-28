<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	padding-top:50px;
	padding-bottom:30px;
	min-height:800px;
	}
	
	.lista-pikave-fundore {
		with:60%;
		margin:auto;
	}
	
	.pikat-fundore {
	margin-top: 110px;
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
<section class="pikat-fundore">
	<h2 class="h5">Pikat fundore</h2>
	
	<ul class="lista-pikave-fundore">
		<li>
			<p><a href="/">/</a> - Pershkrim i pikave fundore</p>
		</li>
		<li>
			<p><a href="/shkrimtaret">/shkrimtaret</a> - Te dhenat e faqes ne forme permbajtje</p>
		</li>
		<li>
			<p><a href="/termat">/termat</a> - Publikimi i fjalorit ne format Turtle</p>
		</li>
		<li>
			<p><a href="/tedhenat">/tedhenat</a> - Publikimi i te dhenave ne format Turtle</p>
		</li>
		<li>
			<p><a href="/inferenca">/inferenca</a> - Publikimi i te dhenave te inferuara ne format Turtle</p>
		</li>
		<li>
			<p><a href="/sparql">/sparql</a> - Pika fundore SPARQL</p>
		</li>
	</ul>
</section>
</main>

<!-- Footer  -->
<footer>
<jsp:include page="../WEB-INF/footer.jsp"></jsp:include>

</footer>
</body>
</html>