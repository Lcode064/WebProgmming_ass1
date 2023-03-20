
package com.luka;
//Admin username: admin
//Admin password: admin
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class insert 
{//method for inserting customers into users and customer table
    public int checkUser(Customer_Registration obj,superMarketBean myObj) throws SQLException, ClassNotFoundException
    {
        int flag=0;
        Connaction cun=new Connaction();
        Connection conn=cun.setConnect();
        String sql="insert into users(username,password) values(?,?)";
        String sql1="insert into reciept(username,gender,password,productname,productcode,productprice) values(?,?,?,?,?,?)";
        
        PreparedStatement prep=conn.prepareStatement(sql);
        prep.setString(1, obj.getName());
        prep.setString(2, obj.getPassword());
        prep.executeUpdate();
        PreparedStatement pp=conn.prepareStatement(sql1);
        pp.setString(1, obj.getName());
        pp.setString(2, obj.getGender());
        pp.setString(3, obj.getPassword());
        pp.setString(4, myObj.getProductName());
        pp.setString(5, myObj.getProductCode());
        pp.setString(6, myObj.getProductPrice());
        pp.executeUpdate();
        
        flag=1;
        
        return flag;
    }
}
