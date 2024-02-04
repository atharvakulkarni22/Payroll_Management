/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PayRoll;
import java.sql.*;
import javax.swing.*;


/**
 *
 * @author Vedant
 */
public class con_class {
    
    Connection con = null;
    
    
    public static Connection java_con(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/payroll","root","mysql");
            return con;
            
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
    }
    
}


