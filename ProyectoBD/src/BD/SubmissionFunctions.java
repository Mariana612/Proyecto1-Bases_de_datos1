/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import java.sql.CallableStatement;
import java.sql.SQLException;

/**
 *
 * @author maria
 */
public class SubmissionFunctions {
    
    public static void insertFollowUp(int dAdoptionForm, String vNote) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call userUsablePackage.insertFollowUp(?, ?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setInt(1, dAdoptionForm);
            callableStatement.setString(2, vNote);

            callableStatement.execute();

            callableStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
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
    
        public static void insertFollowUpPhoto(int dAdoptionForm, String vpath) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call userUsablePackage.insertFollowUpPhoto(?, ?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setInt(1, dAdoptionForm);
            callableStatement.setString(2, vpath);

            callableStatement.execute();

            callableStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
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
