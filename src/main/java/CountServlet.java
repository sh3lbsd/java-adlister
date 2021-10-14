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
        //   BONUS: Allow the user to pass a parameter in the query string to reset the counter.
        //http://localhost:8080/count?count=
        String passedCount = request.getParameter("count");
        // if there is no name in the url query, it will return null, so then we set null equal to a string
        if (passedCount != null) count = Integer.valueOf(passedCount);
        //every time user requests the page we increment a count plus one
        else count ++;
        PrintWriter out = response.getWriter();
        out.println("<h1> Page Viewed: " + count + " time(s).</h1>");
    }

}
