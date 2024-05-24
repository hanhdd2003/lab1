package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Products;

public class AddProduct extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddProduct</title>");
            out.println("</head>");
            out.println("<body>");

            String id = request.getParameter("id");
            String name = request.getParameter("name");
            int id_add;

            try {
                id_add = Integer.parseInt(id);
                ProductDAO pr = new ProductDAO();
                Products p = pr.getByID(id_add);
                if (p == null) {
                    Products p_new = new Products(id_add, name);
                    pr.addProduct(p_new);
                    response.sendRedirect("servlet");
                } else {
                    request.setAttribute("error", "id "+id + " exitsed");
                    request.getRequestDispatcher("add.jsp").forward(request, response);
                }

            } catch (NumberFormatException e) {
                System.out.println(e);
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
