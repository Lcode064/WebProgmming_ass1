//Admin username: admin
   // Admin password: admin
package com.luka;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connaction//interface for creating a connection to the database
{
    Connection conn;
    public Connection setConnect() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mgc";
        String user="root";
        String password="1234";
        conn=DriverManager.getConnection(url, user, password);
        return conn;
    }

    
}
