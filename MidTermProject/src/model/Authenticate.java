package model;

import java.sql.*;

public class Authenticate {
	

	public boolean authenticator(String username, String password) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from login where username='"+username+"'");
		if(rs.next()){
			if(rs.getString(2).equals(password)){
				return true;
			}
		}
		else
			return false;
		return false;
			
			
	}


}