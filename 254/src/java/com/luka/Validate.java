
package com.luka;

import java.sql.*;

public class Validate //interface for handling the flags and validating the user at login
{
    public int checkUser(UserAccount obj) throws SQLException, ClassNotFoundException {
    Connaction cun = new Connaction();
    int flag;
        try (Connection conn = cun.setConnect()) {
            String sql = "SELECT username, password FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, obj.getName());
            stmt.setString(2, obj.getPassword());
                try (ResultSet rs = stmt.executeQuery()) {
                    flag = 0;
                    if (rs.next()) {
                        flag = 1;
                    }   }
        }
        }
    
    return flag;
}

}
