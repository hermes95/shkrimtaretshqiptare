<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shkrimtaret</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
	main {
	width:90%;
	margin:auto;
	padding-top:50px;
	padding-bottom:30px;
	min-height:800px;
	}
		
	.shkrimtar {
		border:1px solid black;
		padding:20px;
		margin:5px;
	}
	
	.copyright {
		background-color:#f8f9fa;
	}
	
	.shkrimtaret {
		display:grid;
		grid-template-columns:1fr 1fr 1fr;
	}
</style>
</head>
<body>
<header>
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
</header>
<main>
<section class="shkrimtaret">
<section id="gjergjfishta" class="shkrimtar">
<h1 class="h4 text-center">Gjergj Fishta</h1>
<ul>
	<li>Gjinia: Mashkull</li>
	<li>Datelindja: 23 Tetor 1871</li>
	<li>Larguar nga jeta: 30 Dhjetor 1940</li>
	<li>Ka shkruar:
		<ul>
			<li>Lahuta e Malcis</li>
			<li>Anzat e Parnasit</li>
			<li>Vallja e Parrizit</li>
			<li>Shqiptari i qytetnuem</li>
			<li>Gomari i Babatasit</li>
			<li>Mrizi i Zanave</li>
		</ul>
	</li>
</ul>
</section>

<section id="driteroagolli" class="shkrimtar">
<h1 class="h4 text-center">Dritero Agolli</h1>
<ul>
	<li>Gjinia: Mashkull</li>
	<li>Datelindja: 13 Tetor 1931</li>
	<li>Larguar nga jeta: 3 Shkurt 2017</li>
	<li>Ka shkruar:
		<ul>
			<li>Hapat e mia ne asfalt</li>
			<li>Zhurma e ererave te dikurshme</li>
			<li>Shkelqimi dhe renia e shokut Zylo</li>
			<li>Njeriu me top</li>
			<li>I perndjekuri i dashurise</li>
			<li>Kaloresi lakuriq</li>
		</ul>
	</li>
</ul>
</section>

<section id="naimfrasheri" class="shkrimtar">
<h1 class="h4 text-center">Naim Frasheri</h1>
<ul>
	<li>Gjinia: Mashkull</li>
	<li>Datelindja: 25 Maj 1846</li>
	<li>Larguar nga jeta: 20 Tetor 1900</li>
	<li>Ka shkruar:
		<ul>
			<li>Bageti e Bujqesia</li>
			<li>Vjersha per mesonjtoret e para</li>
			<li>Histori e pergjithshme</li>
			<li>Lulet e veres</li>
			<li>Historia e Shqiperise</li>
			<li>Enderrimet</li>
		</ul>
	</li>
</ul>
</section>
</section>
</main>
<footer>
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</footer>
</body>
</html>