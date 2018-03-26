import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class Count extends HttpServlet {
    public int count = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        count ++;
        if(req.getParameter("counter") != null && req.getParameter("counter").equalsIgnoreCase("reset")){
            count = 0;
            res.getWriter().println("<h1>The count has been reset to 0!</h1>");
        }else if(count == 1) {
            res.getWriter().println("<h1>This page has been viewed " + count + " time</h1>");
        } else res.getWriter().println("<h1>This page has been viewed " + count + " times</h1>");
    }
}
