
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="database.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: hiran
  Date: 11/29/16
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sinhala WordNet</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/searchbar.css" rel="stylesheet">
</head>
<body>
<form action="index.jsp">
    <div class="container">
        <div class="row">
            <h2>Search any Sinhala word here</h2>
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" name="search" class="  search-query form-control" placeholder="Search"/>
                    <span class="input-group-btn">
                                    <button class="btn btn-danger" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                </div>
            </div>
        </div>
    </div>

</form>
<%
    String word = request.getParameter("search");
    if (word != null && word.length() > 1) {
        String sql = "SELECT * FROM `sentence` WHERE text like '" + "%" + word + "%" + "'";

        try {
            Connection connection = DBConnection.getConnection();
            Statement stm = connection.createStatement();
            ResultSet rst = stm.executeQuery(sql);
            while (rst.next()) {
                if (rst.getString("text").length()<150){
                    out.print(rst.getString("text")+"<br>");
                }

            }
        } catch (SQLException | ClassNotFoundException | ArrayIndexOutOfBoundsException ex) {
            ex.printStackTrace();
        } finally {
            out.close();
        }
    }
%>
<script src="js/bootstrap.min.js"></script>
<script src="jquery/jquery-3.1.0.min.js"></script>
</body>
</html>
