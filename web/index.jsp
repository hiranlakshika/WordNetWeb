<%@ page import="database.DBConnection" %>
<%@ page import="morphology.WordsGenerator" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%--
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
    <link href="css/navbar.css" rel="stylesheet">
    <style type="text/css">
        .highlight {
            color: #000;
            background-color: #ff0;
        }
    </style>
</head>
<body>
<%@include file="fragments/navbar.jsp"%>
<br>
<br>
<br>
<form action="index.jsp">

    <div class="container">
        <div class="row">
            <h3>ඔබ සොයන වචනය මෙහි ඇතුලත් කරන්න </h3>
            <div id="custom-search-input">
                <div class="input-group col-md-6">
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
        String baseWord = WordsGenerator.generateWord(word);

        out.print("<div class=\"form-group col-md-4\">\n" +
                "    <label for=\"baseform\">වචනයේ මූලික ස්වරූපය:</label>\n" +
                "    <input type=\"text\" class=\"form-control\" id=\"baseform\" value=\"" + baseWord + "\">\n" +
                "</div>");

        String sql = "SELECT * FROM `sentence` WHERE text like '" + "%" + word + "%" + "'";

        try {
            Connection connection = DBConnection.getConnection();
            Statement stm = connection.createStatement();
            ResultSet rst = stm.executeQuery(sql);
            out.print("<div class=\"form-group col-md-12\">\n" +
                    "    <label for=\"sentence\">උදාහරණ වාක්\u200Dය:</label>\n" +
                    "    <textarea class=\"form-control\" rows=\"10\" id=\"sentence\">");
            int count = 0;
            while (rst.next()) {
                ++count;
                if (count > 15) {
                    break;
                }
                if (rst.getString("text").length() < 150 && !rst.getString("text").trim().isEmpty()) {
                    out.println(rst.getString("text") + ".");
                }
            }
            out.print("</textarea>\n" +
                    "</div>");
        } catch (SQLException | ClassNotFoundException | ArrayIndexOutOfBoundsException ex) {
            ex.printStackTrace();
        } finally {
            out.close();
        }
    }
%>

<%@include file="fragments/footer.jsp"%>

<script src="js/bootstrap.min.js"></script>
<script src="jquery/jquery-3.1.0.min.js"></script>
<script src="jquery/jquery.highlight-search-terms.min.js"></script>

<script>
    function highlightText() {
        $(function () {
            $("body").highlightSearchTerms({
                referrer: "http://www.google.com/search?q=වචනය"
            });
        });
    }
</script>
</body>
</html>
