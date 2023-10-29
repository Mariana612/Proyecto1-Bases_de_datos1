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
    
        public static List<List<String>> getFollowUp(int idPerson) {
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
            List<List<String>> finalList = new ArrayList<>();

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
                    List<String> tempList = new ArrayList<>();
                    tempList.add(res.getString("note"));
                    tempList.add(res.getString("ID_CANDIDATE"));

                    callableStatementtemp.execute();

                    ResultSet restemp = (ResultSet) callableStatementtemp.getObject(1); //a
                   
                    while (restemp.next()) {
                        
                        tempList.add(restemp.getString("picture_path"));
                        
                        
                    }
                    finalList.add(tempList);
                    
                }
                catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
                
            }
            res.close();
            callableStatement.close();
            
            System.out.println(finalList);

            return finalList;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
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
        
    public static void qualifyUser(int idPhysical,int idCandidate, int grade ) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call associationXRescuerPackage.qualifyUser(?, ?,?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setInt(1, idPhysical);
            callableStatement.setInt(2, idCandidate);
            callableStatement.setInt(3, grade);

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
