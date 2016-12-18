<%--
  Created by IntelliJ IDEA.
  User: hiran
  Date: 12/12/16
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your suggestions</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/navbar.css" rel="stylesheet">
</head>
<body>
<%@include file="fragments/navbar.jsp"%>
<div class="container">
    <section>
        <div class="page-header" id="contact">
            <h2 style="margin-top: 2cm">Please send your suggestions</h2>
        </div>

        <div class="row">
            <div class="col-lg-8">
                <form action="suggestions.jsp" class="form-horizontal">
                    <div class="form-group">
                        <label for="user-name" class="col-lg-2 control-label">Name</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="user-name" placeholder="Enter you name"
                                   name="name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user-email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="email" class="form-control" id="user-email"
                                   placeholder="Enter you Email Address" name="email" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user-url" class="col-lg-2 control-label">Your Website</label>
                        <div class="col-lg-10">
                            <input type="url" class="form-control" id="user-url" placeholder="If you have Any."
                                   name="web">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user-message" class="col-lg-2 control-label">Your Message</label>
                        <div class="col-lg-10">
                                    <textarea id="user-message" class="form-control"
                                              cols="20" rows="10" placeholder="Enter your Message" name="message"
                                              required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
</body>
</html>
