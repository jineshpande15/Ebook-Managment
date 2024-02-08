
package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;
    public static Connection getConn()
    {
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
   conn= DriverManager.getConnection("jdbc:mysql:///ebook-app?useSSL=false&allowPublicKeyRetrieval=true", "root","root");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    return conn;
    }
}
