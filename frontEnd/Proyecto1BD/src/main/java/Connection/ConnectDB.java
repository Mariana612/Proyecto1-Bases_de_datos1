/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author fabian
 */
public class ConnectDB {
    public static void notInsertPerson(int pid_person, String first_name, String middle_name, String first_lastname, String second_lastname ) throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:daniela"; 
        String userNameDB = "PR1"; 
        String userPasswordDb = "PR1"; 
        Connection con = DriverManager.getConnection(host, userNameDB, userPasswordDb); 
        CallableStatement state = con.prepareCall("{ call ansertPerson(?, ?, ?, ?, ?)}");
        
        state.setInt(1, pid_person); 
        state.setString(2, first_name); 
        state.setString(3, middle_name); 
        state.setString(4, first_lastname); 
        state.setString(5, second_lastname); 
        state.execute(); 
    }
    
    public static void insertPerson(String district, String canton, String province, String country, String continent,
            String first_name, String middle_name, String first_lastname, String second_lastname) throws SQLException{
        
        String host = "jdbc:oracle:thin:@localhost:1521:daniela"; 
        String userNameDB = "PR1"; 
        String userPasswordDb = "PR1"; 
        Connection con = DriverManager.getConnection(host, userNameDB, userPasswordDb); 
        CallableStatement state = con.prepareCall("{ call createUser.insertPerson(?, ?, ?, ?, ?, ?, ?, ?, ?)}");
        
        state.setString(1, district);
        state.setString(2, canton);
        state.setString(3, province);
        state.setString(4, country);
        state.setString(5, continent);
        state.setString(6, first_name);
        state.setString(7, middle_name);
        state.setString(8, first_lastname);
        state.setString(9, second_lastname);
        state.execute();
    }
    
    public static void agregarPerson(String firstName, String middleName, String firstLastname, String secondLastname) throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:daniela"; 
        String userNameDB = "PR1"; 
        String userPasswordDb = "PR1"; 
        Connection con = DriverManager.getConnection(host, userNameDB, userPasswordDb);
        CallableStatement state = con.prepareCall("{ call testPerson(?, ?, ?, ?)}");
        
        state.setString(1, firstName); 
        state.setString(2, middleName);
        state.setString(3, firstLastname);
        state.setString(4, secondLastname); 
        state.execute(); 

        

    }
}
