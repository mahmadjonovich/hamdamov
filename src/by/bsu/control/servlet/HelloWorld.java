package by.bsu.control.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.bsu.bygaming.domain.User;

public class HelloWorld extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		User user = new User();
		res.setContentType("text/html");
		
        PrintWriter out = res.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>hello</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>hello</h1>");
        out.println("</body>");
        out.println("</html>");
		out.close();
	}
}
