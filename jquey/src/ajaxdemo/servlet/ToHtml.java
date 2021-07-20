package ajaxdemo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/toHtml")
public class ToHtml extends BaseServlet{
	public void toHtml(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String id = req.getParameter("id");
		System.out.println(id);
		req.getRequestDispatcher("index.html").forward(req, resp);
	}
}
