package com.shkrimtaretshqiptare.servlets;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jena.query.Dataset;
import org.apache.jena.query.DatasetFactory;
import org.apache.jena.query.Query;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.query.QueryParseException;
import org.apache.jena.query.QuerySolution;
import org.apache.jena.query.ResultSet;
import org.apache.jena.query.ResultSetFormatter;
import org.apache.jena.rdf.model.InfModel;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.reasoner.Reasoner;
import org.apache.jena.reasoner.ReasonerRegistry;
import org.apache.jena.riot.RDFDataMgr;
import org.apache.jena.sparql.resultset.CSVOutput;

/**
 * Servlet implementation class SPARQL
 */
@WebServlet("/sparql")
public class SPARQL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SPARQL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("HTML/sparql.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String q = request.getParameter("query");
		
		//Krijimi i grafit te bashkauar
		Model termat = ModelFactory.createDefaultModel();
		Model tedhenat = ModelFactory.createDefaultModel();
		RDFDataMgr.read(termat, "termat.ttl");
		RDFDataMgr.read(tedhenat, "data.ttl");
		Dataset ds = DatasetFactory.create();
		ds.addNamedModel("https://shkrimtaretshqiptare.herokuapp.com/termat", termat);
		ds.addNamedModel("https://shkrimtaretshqiptare.herokuapp.com/shkrimtaret", tedhenat);
		Model unionModel = ds.getUnionModel();
		
		//Inferenca
		Reasoner arsyetues = ReasonerRegistry.getOWLReasoner();
		InfModel inf = ModelFactory.createInfModel(arsyetues ,unionModel);
		
		Query query = QueryFactory.create(q) ;
		  try (QueryExecution qexec = QueryExecutionFactory.create(query, inf)) {
			  try {
				  ResultSet results = qexec.execSelect();
				  String xmlString = ResultSetFormatter.asXMLString(results);
				  response.getWriter().write(xmlString);
			  } catch (Exception e) {
				  response.getWriter().write("Pyetesor i gabuar");
			  }
		  } catch (QueryParseException qex) {
			  response.getWriter().write("Pyetesor i gabuar");
		  }
		}
	}

