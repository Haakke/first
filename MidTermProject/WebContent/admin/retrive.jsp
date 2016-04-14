<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String search=request.getParameter("search");
    System.out.println(search);
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
<h2 align="center"><font><strong>Lisence Information</strong></font></h2>

<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	PreparedStatement st = connection.prepareStatement("SELECT * FROM record WHERE id=?");
	PreparedStatement hist = connection.prepareStatement("SELECT * FROM history WHERE id=? ");
   	hist.setString(1,search); 
	st.setString(1, search); 
	resultSet = st.executeQuery();
	historyresult = hist.executeQuery();
	
	//otherresultset=st.executeQuery();
	if(historyresult.next()){
		historyresult.beforeFirst();	
	}
	else{
		%>NO LISENCE HISTORY !!<% 
	}
	if(resultSet.next()){
		resultSet.beforeFirst();
		

		while(resultSet.next()){
%>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
	<td><b>id</b></td>
	<td><b>user_id</b></td>
	<td><b>Password</b></td>
	<td><b>Name</b></td>
	<td><b>Email</b></td>
</tr>
		<tr bgcolor="#DEB887">

			<td><%=resultSet.getString("id") %></td>
			<td><%=resultSet.getString("user_id") %></td>
			<td><%=resultSet.getString("password") %></td>
			<td><%=resultSet.getString("name") %></td>
			<td><%=resultSet.getString("email") %></td>

		</tr>

<% 
		}
	}
	else{
		out.println("License is not valid");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
</table>