/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EquityResearchManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author caleb
 */
public class MySQLConnect {

    static Connection conn;
    public static Connection getConn(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/equity research management system","root","");
         return conn;
        }catch(Exception e){

            JOptionPane.showMessageDialog(null, "Err in MySQL getconn"+e);
        }
        return null;
    }
}
