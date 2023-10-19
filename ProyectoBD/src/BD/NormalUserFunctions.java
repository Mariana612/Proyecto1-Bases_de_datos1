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
            System.out.println("Cantidad");
            System.out.println(listSize);
            String[] petListWithStatus = new String[listSize];
            int index = 0;
            while (res.next()) {
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
}
