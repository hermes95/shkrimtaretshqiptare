<%@ page language="java" contentType="text/html; charset=ISO-8859-1" errorPage="./WEB-INF/error.jsp"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SPARQL</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
	main {
	width:90%;
	margin:auto;
	padding-top:30px;
	padding-bottom:30px;
	min-height:800px;
	}
	
	.sparql {
		display:grid;
		grid-template-columns:50% 50%;
	}
	
	.sparql form {
		width:100%;
	}
	
	textarea {
	width:100%;
	height:600px;
	resize:vertical;
	}
</style>
</head>
<body>
<!-- Header -->
<header>
<jsp:include page="../WEB-INF/header.jsp"></jsp:include>
</header>
<main>
<section class="sparql">
<form action="sparql" method="POST">
<textarea name="query">
PREFIX : &lt;https://shkrimtaretshqiptare.herokuapp.com/termat#&gt;
PREFIX shkrimtaret: &lt;https://shkrimtaretshqiptare.herokuapp.com/shkrimtaret#&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX dc: &lt;http://purl.org/dc/elements/1.1&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX foaf: &lt;http://xmlns.com/foaf/0.1/&gt;
PREFIX xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;

SELECT ?s ?p ?o
WHERE {
?s ?p ?o
}
</textarea>
<br>
<input type="submit" value="Kerko">
</form>
<section class="queries">
	<ul>
		<li>
		<h1 class="h6">Pyetesor 1 - Perzgjidh URI per instancat e tipit :Shkrimtar</h1>
		<p>SELECT ?shkrimtari<br>
		WHERE {<br> 
		?shkrimtari a :Shkrimtar.<br>
		}
		</p>
		</li>
		<li>
		<h1 class="h6">Pyetesor 2 - Perzgjidh te dhenat per entitetin naimfrasheri</h1>
		<p>SELECT ?p ?o<br>
		WHERE {<br> 
		shkrimtaret:naimfrasheri ?p ?o.<br>
		}<br>
		ORDER BY (?p)
		</p>
		</li>
		<li>
		<h1 class="h6">Pyetesor 3 - Perzgjidh te dhenat per entitetin me emer "Dritero"</h1>
		<p>SELECT ?p ?o<br>
		WHERE{<br>
		?s :emri "Dritero".<br>
		?s ?p ?o.<br>
		}
		</p>
		</li>
		<li>
		<h1 class="h6">Pyetesor 4 - Perzgjidh datelindjen e shkrimtarit Gjergj Fishta</h1>
		<p>SELECT ?datelindja<br>
		WHERE{<br>
		?s :emri "Gjergj".<br>
		?s :mbiemri "Fishta".<br>
		?s :datelindja ?datelindja.<br>
		}
		</p>
		</li>
	</ul>
</section>
</section>

</main>
<!-- Footer  -->
<footer>
<jsp:include page="../WEB-INF/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</footer>
</body>
</html>