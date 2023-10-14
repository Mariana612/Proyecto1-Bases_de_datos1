/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author marie
 */
public class CallProcedureInPackage {
    public static void callInsertPerson(String pcDistrictN, String pcCantonN, String pcProvinceN, String pcCountryN, String pcContinentN,
            String pcFirstN, String pcMiddleN, String pcFirstLastN, String pcSecondLastN, String pcUserName, String pcPassword, String pcEmail) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();

        try {
            // Establece la conexión a la base de datos utilizando la clase ConnectionDB
            ConnectionDB connection = new ConnectionDB();
            // Llama al procedimiento almacenado en el paquete
            String procedureCall = "{call createUser.insertPerson(?,?,?,?,?,?,?,?,?,?,?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            // Configura los parámetros del procedimiento almacenado
            callableStatement.setString(1, pcDistrictN);
            callableStatement.setString(2, pcCantonN);
            callableStatement.setString(3, pcProvinceN);
            callableStatement.setString(4, pcCountryN);
            callableStatement.setString(5, pcContinentN);
            callableStatement.setString(6, pcFirstN);
            callableStatement.setString(7, pcMiddleN);
            callableStatement.setString(8, pcFirstLastN);
            callableStatement.setString(9, pcSecondLastN);
            callableStatement.setString(10, pcUserName);
            callableStatement.setString(11, pcPassword);
            callableStatement.setString(12, pcEmail); 

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
    
    public static void callCreateUserPerson(String username, String password){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            // Establece la conexión a la base de datos utilizando la clase ConnectionDB
            ConnectionDB connection = new ConnectionDB();
            // Llama al procedimiento almacenado en el paquete
            String procedureCall = "{call createUser.createUserPerson(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            // Configura los parámetros del procedimiento almacenado
            callableStatement.setString(1, username);
            callableStatement.setString(2, password);

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
}

