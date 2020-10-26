package com.shkrimtaretshqiptare.servlets;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jena.query.Dataset;
import org.apache.jena.query.DatasetFactory;
import org.apache.jena.rdf.model.InfModel;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.reasoner.Reasoner;
import org.apache.jena.reasoner.ReasonerRegistry;
import org.apache.jena.riot.Lang;
import org.apache.jena.riot.RDFDataMgr;

/**
 * Servlet implementation class Inferenca
 */
@WebServlet("/inferenca")
public class Inferenca extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inferenca() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		//Publikimi i grafit
		Writer writer = response.getWriter();
		response.addHeader("Content-type", "text/turtle");
		RDFDataMgr.write(writer, inf, Lang.TURTLE);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
