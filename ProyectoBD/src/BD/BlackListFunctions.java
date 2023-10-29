/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import static BD.LoginFunctions.getAmountContinents;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author fabia
 */
public class BlackListFunctions {
    public static void createBlackListAssociation(String blackListName, int association_id){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call blackListPack.createAssociationList(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setString(1, blackListName);
            callableStatement.setInt(2, association_id);
            callableStatement.execute();

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
    
       public static void createBlacklist(String blackListName, int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call blackListPack.createBlacklist(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setString(1, blackListName);
            callableStatement.setInt(2, personId);
            callableStatement.execute();

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
       
    public static boolean checkRescuer(int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call blackListPack.checkType(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);

            callableStatement.setInt(2, personId);
            
            
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
    
    public static int getListAmountAssociation(int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call blackListPack.listAmountAssociation(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, personId);

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
    
        public static int getListAmountRescuer(int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call blackListPack.listAmountRescuer(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, personId);

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
        
    public static String[] getAssocciationLists(int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call blackListPack.getAsocBlackLists(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, personId);
            
            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getListAmountAssociation(personId);

            String[] continentList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("blacklist_name");
                continentList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return continentList;
        } catch (SQLException e) {
            e.printStackTrace();
            String[] cont = null;
            return cont;
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
    public static String[] getRescuerLists(int personId){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call blackListPack.getRescBlackLists(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, personId);
            
            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getListAmountRescuer(personId);

            String[] continentList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("blacklist_name");
                continentList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return continentList;
        } catch (SQLException e) {
            e.printStackTrace();
            String[] cont = null;
            return cont;
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
