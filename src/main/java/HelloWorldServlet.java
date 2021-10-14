import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = {"/hello"})
public class HelloWorldServlet extends HttpServlet {
    //to set a new name in the query string
//    http://localhost:8080/hello?name=
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
//        BONUS
        String name = request.getParameter("name");
        // if there is no name in the url query, it will return null, so then we set null equal to a string
        if (name == null) name = "World";
        PrintWriter out = response.getWriter();
        out.println("<h1> Hello, " + name + "!</h1>");
    }

}
