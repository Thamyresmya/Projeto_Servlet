package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//mapeamento do servlet
//@WebServlet(urlPatterns = "/oi")
public class OiMundoServlet extends HttpServlet{
	
	//metodo
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//resposta
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("Oi mundo, parabens vc escreveu o primeiro servlet");
		out.print("</body>");
		out.print("</html>");
		
		System.out.println("O servlet OiMundoServlet foi chamado");
	}
	
}
