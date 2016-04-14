<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>

<html lang="en">
<!--<![endif]-->

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
 <section class="for-full-back color-white" id="services">
        <div class="container">

            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h1>OUR SERVICES</h1>
                    <h4>
                        <strong>Check if you're lisence is regestired !
                        </strong>
                    </h4>
                </div>

            </div>
            
            <div class="row  space-pad">
                <div class="col-md-3 ">

                    <div class="about-div text-center ">

                        <i class="fa fa-credit-card fa-4x color-blue"></i>


                        <h3>Check Your Lisence  
                        <form action="Services.jsp" method="get"><br>
                        <input type="text" name="myText" >
                        <input type="submit" value="Check">
                        </form>  </h3>
                       

                    </div>

                </div>
                <div class="col-md-6 ">
                    
                      <p>
                   <a href="#" class="btn btn-default" >Check tax information  </a>    
                           <a href="#" class="btn btn-default" >Check Lisence information</a> 
                              
                      </p>
                        

                    

                </div>
                
                <div class="col-md-3 ">

                    <div class="about-div text-center">


                          <i class="fa fa-envelope-o fa-4x color-blue"></i>


                      
                      
                       <%
String myText = request.getParameter("myText");
if (myText == null) {
	%><h3>You will see yor result here </h3>
	<% 
out.println("You will see yor result here");
} else { 
if (myText.length() == 0) {
%>	<h3>Plsease Enter lisence number </h3><% 
%>

<% } else { %>
<%
String search=request.getParameter("myText");
//System.out.println(search);
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "retrive";
String userId = "root";
String password = "root";

try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet historyresult=null;
%>
<h2 align="center"><font><strong>License Information</strong></font></h2>
<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	PreparedStatement st = connection.prepareStatement("SELECT * FROM record WHERE id=?");
	st.setString(1, search); 
	resultSet = st.executeQuery();
	
	if(resultSet.next()){
		out.println("Valid License");
	}

	else{
		out.println("NOT VALID License");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>





<%

}
}
%>
                      
                    </div>

                </div>
            </div>
            
        </div>


    </section>

</body>
</html>