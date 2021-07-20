package ajaxdemo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

public class UserServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println(this);
        String name = request.getParameter("uname");
        boolean used = false;
        if("ajax".equals(name)){
            used = true;
        }else{
            used = false;
        }
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       // String jsonString = JSON.toJSONString(new Person("lisi", 20));
       // out.print(jsonString);
       // out.print("{\"age\":20,\"name\":\"lisi\"}");
        out.print(used);
        out.flush();
        out.close();
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        this.doGet(request, response);
    }

}
