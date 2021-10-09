import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Count", urlPatterns = {"/count"})
public class CountServlet extends HttpServlet {

    int count = 0;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        //every time user requests the page we increment a count plus one
        count ++;
        PrintWriter out = response.getWriter();
        out.println("<h1> Page Viewed: " + count + " times.</h1>");
    }

}
