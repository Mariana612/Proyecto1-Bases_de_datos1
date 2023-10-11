/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author marie
 */
public class ConnectionDB {
    public Connection conn = null;
    private String url, user, pass;
    
    public ConnectionDB(){
        conectar();
    }
    
    private void conectar(){
        try {
            Class.forName("oracle.jdbc.OracleDriver"); //DRIVER
            url = "jdbc:oracle:thin:@localhost:1521:MARIELADB";
            user = "PR1";
            pass = "PR1";
            conn  = DriverManager.getConnection(url, user, pass);
            System.out.println("Conectado a la BD");
        }catch(Exception e){
            System.out.println("Error, no se pudo conectar a la BD");
        }
    }
    
    public void desconectar(){
        try {
            conn.close();
            System.out.println("Desconectado a la BD");
        }catch(Exception e){
            System.out.println("Error, no se pudo desconectar a la BD");
        }
    }
}
