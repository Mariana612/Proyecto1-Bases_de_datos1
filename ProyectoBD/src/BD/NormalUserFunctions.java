/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import Views.NormalUserMain;
import java.awt.BorderLayout;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;


/**
 *
 * @author maria
 */
public class NormalUserFunctions {
    public NormalUserFunctions() {}

    public static int getPetAmount() {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getPetAmount()}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);

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

    public static String[] getAllPets() {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getAllPets()}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);

            callableStatement.execute();

            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getPetAmount();
           
            String[] petListWithStatus = new String[listSize];
            int index = 0;
            while (res.next()) {
                String petId = res.getString("id");
                String petName = res.getString("pet_name");
                String status = res.getString("status_name");
                String petType = res.getString("type_name");
                String colorName = res.getString("color_name");
                String breedName = res.getString("breed_name");
                String combinedInfo = "<html> Status: " + status +
                        "<br>Pet Name: " + petName +"<br>Pet Type: " + petType  
                        +"<br>Color: " + colorName +"<br>Breed " + breedName + "</html>";
                petListWithStatus[index] = combinedInfo;
                index++;
            }
            res.close();
            callableStatement.close();

            return petListWithStatus;
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
    
        public static int[] getAllPetsID() {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getAllPets()}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);

            callableStatement.execute();

            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getPetAmount();
            int[] petListId = new int[listSize];
            int index = 0;
            while (res.next()) {
                int petId =  Integer.parseInt(res.getString("id"));
                petListId[index] = petId;
                index++;
            }
            res.close();
            callableStatement.close();

            return petListId;
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
        
        public static String[] getAllSelectedPets(int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getAllSelectedPets(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, idPerson);

            callableStatement.execute();

            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getSelectedPetAmount(idPerson);
            String[] petListWithStatus = new String[listSize];
            int index = 0;
            while (res.next()) {
                String petId = res.getString("id");
                String petName = res.getString("pet_name");
                String status = res.getString("status_name");
                String petType = res.getString("type_name");
                String colorName = res.getString("color_name");
                String breedName = res.getString("breed_name");
                String combinedInfo = "<html> Status: " + status +
                        "<br>Pet Name: " + petName +"<br>Pet Type: " + petType  
                        +"<br>Color: " + colorName +"<br>Breed " + breedName + "</html>";
                petListWithStatus[index] = combinedInfo;
                index++;
            }
            res.close();
            callableStatement.close();

            return petListWithStatus;
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
        
        public static int getSelectedPetAmount(int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getSelectedPetAmount(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, idPerson);

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
        
        public static int[] getAllSelectedPetsID(int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call userUsablePackage.getAllSelectedPets(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setInt(2, idPerson);

            callableStatement.execute();

            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getPetAmount();
            int[] petListId = new int[listSize];
            int index = 0;
            while (res.next()) {
                int petId =  Integer.parseInt(res.getString("id"));
                petListId[index] = petId;
                index++;
            }
            res.close();
            callableStatement.close();


            return petListId;
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
    
    
        
    public static int checkFormExistance(int idPet, int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call formProcedures.checkIfAdoptionFExists(?, ?)}";
                        

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setInt(2, idPet);
            callableStatement.setInt(3, idPerson);

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
    public static void createForm(int idPet, int idPerson) {
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call formProcedures.createAdoptionForm(?, ?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setInt(1, idPet);
            callableStatement.setInt(2, idPerson);

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
    public static void insertAnswers(int idPerson, int petId, String OwnHouseAnswer, 
            String PurposePetAnswer,String petAuthorizationAnswer,
            String estimatedTimeAnswer, String interestInPetAnswer,String  
            minimumTimeAnswer, String maximumTimeAnswer){
        
                CallableStatement callableStatement = null;
                
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{call formProcedures.insertAnswers(?, ?, ?, ?, ?, ?, ?, ?, ?)}";

            callableStatement = connection.conn.prepareCall(procedureCall);

            callableStatement.setInt(1, petId);
            callableStatement.setInt(2, idPerson);
            callableStatement.setString(3, OwnHouseAnswer);
            callableStatement.setString(4, interestInPetAnswer);
            callableStatement.setString(5, estimatedTimeAnswer);
            callableStatement.setString(6, PurposePetAnswer);
            callableStatement.setString(7, minimumTimeAnswer);
            callableStatement.setString(8, maximumTimeAnswer);
            callableStatement.setString(9, petAuthorizationAnswer);

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
