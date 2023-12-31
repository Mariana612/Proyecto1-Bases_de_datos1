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
            // "jdbc:mysql://localhost:3306/your_schema_name" 
            url = "jdbc:mysql://localhost:3306/pr2"; // Git ignored
            user = "proyecto2";
            pass = "abc123";
            conn  = DriverManager.getConnection(url, user, pass);
            System.out.println("Conectado a la BD");
        }catch(Exception e){
            System.out.println("Error, no se pudo conectar a la BD");
        }
    }
    public Connection getConnection() throws SQLException {
        if (conn == null || conn.isClosed()) {
            conectar(); // Intenta reconectar si la conexión está cerrada o nula
        }
        return conn;
    }
    public void desconectar(){
        try {
            conn.close();
            
        }catch(Exception e){
            System.out.println("Error, no se pudo desconectar a la BD");
        }
    }
}
