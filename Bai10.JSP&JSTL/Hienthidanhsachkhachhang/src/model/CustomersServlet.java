package model;

import controller.Customers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomersServlet")
public class CustomersServlet extends HttpServlet {
    private static List<Customers> customersList;

    @Override
    public void init() throws ServletException {
        super.init();
        customersList = new ArrayList<>();
        customersList.add(new Customers("Mai Văn Hoàn", "Hà Nội","1983-08-20", ""));
        customersList.add(new Customers("Nguyễn Văn Nam", "Bắc Giang","1983-08-21", ""));
        customersList.add(new Customers("Nguyễn Thái Hòa", "Nam Định","1983-08-22", ""));
        customersList.add(new Customers("Trần Đăng Khoa", "Hà Tây","1983-08-17", ""));
        customersList.add(new Customers("Nguyễn Đình Thi", "Hà Nội","1983-08-19", ""));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customersList", customersList);
        request.getRequestDispatcher("/customers/list.jsp");
    }
}
