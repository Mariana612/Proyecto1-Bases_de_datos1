/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import static BD.NormalUserFunctions.getPetAmount;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maria
 */
public class SubmissionFunctions {
    
    public static int insertFollowUp(int dAdoptionForm, String vNote) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        int result = -1;
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.insertFollowUp(?, ?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);

            callableStatement.setInt(2, dAdoptionForm);
            callableStatement.setString(3, vNote);

            callableStatement.execute();

            result = callableStatement.getInt(1);
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

        return result;
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
    
        public static void getFollowUp(int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getFollowUp(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, idPerson);

            callableStatement.execute();

            ResultSet res = (ResultSet) callableStatement.getObject(1); //a

            while (res.next()) {
                List<String> temp = new ArrayList<>();  
                    CallableStatement callableStatementtemp = null;
                    ConnectionDB connectionDBtemp = new ConnectionDB();
                try {
                    ConnectionDB connectiontemp = new ConnectionDB();
                    String procedureCalltemp = "{? = call userUsablePackage.getFollowUpPhoto(?)}";
                    callableStatementtemp = connectiontemp.conn.prepareCall(procedureCalltemp);

                    callableStatementtemp.registerOutParameter(1, java.sql.Types.REF_CURSOR);
                    callableStatementtemp.setInt(2, res.getInt("id"));

                    callableStatementtemp.execute();

                    ResultSet restemp = (ResultSet) callableStatementtemp.getObject(1); //a
                }
                catch (SQLException e) {
                    e.printStackTrace();
                    //return null;
                }
                
//                
//                String petId = res.getString("id");
//                String petName = res.getString("pet_name");
//                String status = res.getString("status_name");
//                String petType = res.getString("type_name");
//                String colorName = res.getString("color_name");
//                String breedName = res.getString("breed_name");
//                String combinedInfo = "<html> Status: " + status +
//                        "<br>Pet Name: " + petName +"<br>Pet Type: " + petType  
//                        +"<br>Color: " + colorName +"<br>Breed " + breedName + "</html>";

            }
            res.close();
            callableStatement.close();

            //return petListWithStatus;
        } catch (SQLException e) {
            e.printStackTrace();
            //return null;
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
