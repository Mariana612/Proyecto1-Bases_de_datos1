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
            String pcFirstN, String pcMiddleN, String pcFirstLastN, String pcSecondLastN, String pcUserName, String pcPassword) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();

        try {
            // Establece la conexión a la base de datos utilizando la clase ConnectionDB
            ConnectionDB conn = new ConnectionDB();
            // Llama al procedimiento almacenado en el paquete
            String procedureCall = "{call createUser.insertPerson(?,?,?,?,?,?,?,?,?,?,?)}";
            callableStatement = conn.conn.prepareCall(procedureCall);

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

