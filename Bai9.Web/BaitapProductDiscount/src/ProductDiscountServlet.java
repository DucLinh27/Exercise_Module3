import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDiscountServlet")
public class ProductDiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float listPrice = Float.parseFloat(request.getParameter("listPrice"));
        float Discount_Percent = Float.parseFloat(request.getParameter("Discount_Percent"));

        float result = (listPrice* Discount_Percent*0.01f);
        request.setAttribute("discription",description);
        request.setAttribute("listPrice",listPrice);
        request.setAttribute("discount",Discount_Percent);
        request.setAttribute("result",result);
        float discount_amount =Math.round((listPrice-result) * 100) / 100;
        request.setAttribute("discount_amount",discount_amount);

        request.getRequestDispatcher("discount_Product.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
