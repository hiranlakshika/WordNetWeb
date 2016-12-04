package servlet;

import database.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by hiran on 11/29/16.
 */
public class Search extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String word = req.getParameter("search");
        if (word != null && word.length() > 1) {
            String sql = "SELECT * FROM `sentence` WHERE text like '" + "%" + word + "%" + "'";

            try {
                Connection connection = DBConnection.getConnection();
                Statement stm = connection.createStatement();
                ResultSet rst = stm.executeQuery(sql);
                while (rst.next()) {
                    out.print(rst.getString("text")+"<br>");
                }
            } catch (SQLException | ClassNotFoundException | ArrayIndexOutOfBoundsException ex) {
                ex.printStackTrace();
            } finally {
                out.close();
            }
        }
    }
}
