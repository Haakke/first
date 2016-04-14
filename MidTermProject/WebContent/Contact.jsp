<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">


<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Ruluko' rel='stylesheet' type='text/css' />
  
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<section class="for-full-back color-white " id="contact">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h1>Contact And Feedback</h1>
                    <h4>
                        <strong>Feedback..........
                        </strong>
                    </h4>
                </div>

            </div>

            <div class="row">
                <div class="col-md-5 contact-cls">
                    <h3>OUR LOCATION </h3>
                    <div>
                        <span><i class="fa fa-home"></i>&nbsp; Address: </span>
                        <br />
                        <span><i class="fa fa-phone"></i>&nbsp;Phone:</span>
                        <br />
                        
                        <span><i class="fa fa-phone"></i>&nbsp;Call:</span>
                        <br />
                        <span><i class="fa fa-globe"></i>&nbsp;Web:</span>
                        <br /> <br />
                        <button type="submit" class="btn btn-primary"></button>
                    </div>
                  
                </div>
                <div class="col-md-7">
                    
                    <form>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Email address">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="form-group">
                                    <textarea name="message" id="message" required="required" class="form-control" rows="3" placeholder="Message"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-default">Submit Request</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>
</body>
</html>