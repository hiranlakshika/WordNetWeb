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
<div class="menu">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="index.jsp">Sinhala WordNet</a>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li><a href="suggestions.jsp"><span class="glyphicon glyphicon-hand-up"></span> Suggestions</a></li>
                <li><a href="about.html"><span class="glyphicon glyphicon-info-sign"></span> About</a></li>
                <li><a href="references.html"><span class="glyphicon glyphicon-tags"></span> References</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <section>
        <div class="page-header" id="contact">
            <h2 style="margin-top: 2cm">Please send your suggestions</h2>
        </div>

        <div class="row">
            <div class="col-lg-8">
                <form action="#" class="form-horizontal" method="post">
                    <div class="form-group">
                        <label for="user-name" class="col-lg-2 control-label">Name</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="user-name" placeholder="Enter you name"
                                   name="name" required>
                        </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                        <label for="user-email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="user-email"
                                   placeholder="Enter you Email Address" name="email" required>
                        </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                        <label for="user-url" class="col-lg-2 control-label">Your Website</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="user-url" placeholder="If you have Any."
                                   name="web">
                        </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                        <label for="user-message" class="col-lg-2 control-label">Your Message</label>
                        <div class="col-lg-10">
                                    <textarea id="user-message" class="form-control"
                                              cols="20" rows="10" placeholder="Enter your Message" name="message"
                                              required></textarea>
                        </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>


                </form>
            </div>
        </div><!-- End the row -->
    </section>
</div>
</body>
</html>
