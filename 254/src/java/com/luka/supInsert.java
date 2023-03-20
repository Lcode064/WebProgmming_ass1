
package com.luka;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class supInsert //class for inserting products into the database
{
    public int checkUser(superMarketBean supObj) throws SQLException, ClassNotFoundException
    {
        int flag=0;
        Connaction cun=new Connaction();
        Connection conn=cun.setConnect();
        String sql1="insert into supermarket(ProductName,ProductCode,ProductPrice) values(?,?,?)";
        
        PreparedStatement pp=conn.prepareStatement(sql1);
        pp.setString(1, supObj.getProductName());
        pp.setString(2, supObj.getProductCode());
        pp.setString(3, supObj.getProductPrice());
        pp.executeUpdate();
        
        flag=1;
        
        return flag;
    }
}
