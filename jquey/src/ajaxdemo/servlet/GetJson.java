package ajaxdemo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
@WebServlet("/getJSON")
public class GetJson extends BaseServlet{
	public void list(HttpServletRequest req, HttpServletResponse resp) throws IOException, InterruptedException {
		Thread.sleep(2000);
		Person p1 = new Person("zhangsan1", 16);
		Person p2 = new Person("zhangsan2", 17);
		Person p3 = new Person("zhangsan3", 18);
		Person p4 = new Person("zhangsan4", 19);
		Person p5 = new Person("zhangsan5", 20);
		List<Person> p = new ArrayList<Person>();
		p.add(p1);
		p.add(p2);
		p.add(p3);
		p.add(p4);
		p.add(p5);
		PrintWriter writer = resp.getWriter();
		writer.print(JSON.toJSON(p));
		writer.flush();
		writer.close();
	}
}
