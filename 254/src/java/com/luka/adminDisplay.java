
package com.luka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class adminDisplay //class for retrieving users from the database to display them for admin to see then
{
    
    public List<adminPortal> getAllObjects() throws SQLException, ClassNotFoundException 
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mgc";
        String user="root";
        String password="1234";
        String sql="SELECT * FROM users";
        Connection conn=DriverManager.getConnection(url, user, password);
        List<adminPortal> objects = new ArrayList<>();

            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            

            while (rs.next()) {
                adminPortal obj = new adminPortal();
                obj.setName(rs.getString("username"));
                obj.setPassword(rs.getString("password"));

                objects.add(obj);
            }
        return objects;
    }


}
