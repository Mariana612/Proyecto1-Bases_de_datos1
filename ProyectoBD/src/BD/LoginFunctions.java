/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import java.sql.CallableStatement;
import java.sql.SQLException;

/**
 *
 * @author fabian
 */
public class LoginFunctions {
    public static void createJustPerson(String firstName, String middleName, String firstLastname, String secondLastname,
                                        String username, String password, String email){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            // Establece la conexión a la base de datos utilizando la clase ConnectionDB
            ConnectionDB connection = new ConnectionDB();
            // Llama al procedimiento almacenado en el paquete
            String procedureCall = "{call createUser.insertJustPerson(?, ?, ?, ?, ?, ?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            // Configura los parámetros del procedimiento almacenado
            callableStatement.setString(1, firstName);
            callableStatement.setString(2, middleName);
            callableStatement.setString(3, firstLastname);
            callableStatement.setString(4, secondLastname);
            callableStatement.setString(5, username);
            callableStatement.setString(6, password);
            callableStatement.setString(7, email);
            
            // Ejecuta el procedimiento almacenado
            callableStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
                // Cierra la conexión utilizando la clase ConnectionDB
                connectionDB.desconectar();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } 

    public static boolean validateInput(String username, String password){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call loginPack.validateInput(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);

            callableStatement.setString(2, username);
            callableStatement.setString(3, password);
            
            
            callableStatement.execute();
            
            int resultado = callableStatement.getInt(1);
            callableStatement.close();
            return resultado == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
                connectionDB.desconectar();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } 
    public static String loginType(String username, String password){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call loginPack.loginMain(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.VARCHAR);

            callableStatement.setString(2, username);
            callableStatement.setString(3, password);
            
            
            callableStatement.execute();
            
            String resultado = callableStatement.getString(1);
            callableStatement.close();
            return resultado;
        } catch (SQLException e) {
            e.printStackTrace();
            return "";
        } finally {
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
                connectionDB.desconectar();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
