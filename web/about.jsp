<%--
  Created by IntelliJ IDEA.
  User: hiran
  Date: 12/18/16
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Sinhala WordNet</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        .about-text {
            text-align: justify;
            margin-left: 20px;
            margin-right: 20px;
            font-size: large;
        }
    </style>
</head>
<body>
<%@include file="fragments/navbar.jsp" %>
<br>
<br>
<br>
<div class="about-text">
    <p>Sinhalese is the native language of Sinhalese people. There are more than 20 million of people who use this language in Sri Lanka as their native language. Sinhala WordNet is a semantic processing tool which allows users to find the meanings of Sinhala words using sentences. And also, there is a morphological analyser which is used to categorize words. Despite there are numerous approaches to build word-net systems for Sinhala language,
        a proper solution could not be found. So, it is still an unsolved research challenge. This system will be developed based on the Princeton English WordNet. But in this Sinhala WordNet, there are some additional features that are not included in the English WordNet. There are hundred thousand of words in Sinhala language. Some words have multiple meanings when using them. Most of the times people face problems when translating these words into another language and understanding the phrases. This ambiguity of words will be unravelled by the Sinhala WordNet. And this system will be useful for most of areas including the education sector. A huge lexical database system will be implemented including nouns, verbs, adjectives, adverbs and sentences which are used to penetrate the meanings for the users of the system. The redundancies will be decreased with the help of a morphological analysing algorithm. Ultimately this system will be developed as an open source application. The front end will be implemented according to two approaches. First one is using Java Standard Edition and the back end will be maintained with a MySQL database. The second approach is web based front end with Bootstrap framework. The backend is maintained with MySQL database and Java Enterprise Edition. </p>
</div>

<%@include file="fragments/footer.jsp" %>
</body>
</html>
