/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import static BD.LoginFunctions.getAmountContinents;
import static BD.NormalUserFunctions.getSelectedPetAmount;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maria
 */
public class AdoptionFormsFunctions {
    
        public static List<List<String>> getPersonAnswers(int idPerson){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call formProcedures.getAnswersPerson(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, idPerson);

            callableStatement.execute();
            List<List<String>> resultList = new ArrayList<>();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);
            int listSize = getAmountPersonAnswers(idPerson);
            String[] petListWithStatus = new String[listSize];
            int index = 0;
            while (resultSet.next()) {
                List<String> rowData = new ArrayList<>();
                rowData.add(resultSet.getString("pet_name"));
                rowData.add(resultSet.getString("breed_name"));
                rowData.add(resultSet.getString("status_name"));
                
                
                
                resultList.add(rowData);
            }
            resultSet.close();
            callableStatement.close();

            return resultList;
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
        public static int getAmountPersonAnswers(int idPet) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call formProcedures.getAmountAnswers(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, idPet);

            callableStatement.execute();

            int result = callableStatement.getInt(1);

            callableStatement.close();

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
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
     

public static List<List<String>> getAnswers(int idPet){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call formProcedures.getAnswers(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, idPet);

            callableStatement.execute();
            List<List<String>> resultList = new ArrayList<>();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);
            int listSize = getAmountAnswers(idPet);
            String[] petListWithStatus = new String[listSize];
            int index = 0;
            while (resultSet.next()) {
                List<String> rowData = new ArrayList<>();
                rowData.add(resultSet.getString("OWN_HOUSE"));
                rowData.add(resultSet.getString("HAS_AUTHORIZATION"));
                rowData.add(resultSet.getString("PURPOSE"));
                rowData.add(resultSet.getString("INTEREST_IN_ADOPTION"));
                rowData.add(resultSet.getString("ACCOMPANIMENT_AVERAGE"));
                rowData.add(resultSet.getString("MINIMUM_MONTHLY_AMOUNT"));
                rowData.add(resultSet.getString("MAXIMUM_MONTHLY_AMOUNT"));
                rowData.add(String.valueOf(resultSet.getInt("ID_CANDIDATE")));
                rowData.add(String.valueOf(resultSet.getInt("ID_STATUS")));
                
                
                resultList.add(rowData);
            }
            resultSet.close();
            callableStatement.close();

            return resultList;
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
        
        public static int getAmountAnswers(int idPet) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call formProcedures.getAmountAnswers(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, idPet);

            callableStatement.execute();

            int result = callableStatement.getInt(1);

            callableStatement.close();

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
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
        
    public static void updateAFStatus(int idPet, String statusName, int idCandidate){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call formProcedures.updateAFStatus(?,?,?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            
            callableStatement.setInt(1, idPet);
            callableStatement.setString(2, statusName);
            callableStatement.setInt(3, idCandidate);

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

    public static void updateOPStatus(int idPet, String statusName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call formProcedures.updateOPStatus(?,?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            
            callableStatement.setInt(1, idPet);
            callableStatement.setString(2, statusName);
           

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
        
        
        
//                        rowData.add(res.getString("OWN_HOUSE"));
//                 System.out.println("hola 3 ");
//                rowData.add(res.getString("HAS_AUTHORIZATION"));
//                rowData.add(res.getString("PURPOSE"));
//                rowData.add(res.getString("INTEREST_IN_ADOPTION"));
//                rowData.add(res.getString("ACCOMPANIMENT_AVERAGE"));
//                rowData.add(res.getString("MINIMUM_MONTHLY_AMOUNT"));
//                rowData.add(res.getString("MAXIMUM_MONTHLY_AMOUNT"));
//                resultList.add(rowData);

}
