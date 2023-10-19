/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

/**
 *
 * @author marie
 */

import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

public class RegisterPetFunctions {
    private ConnectionDB connectionDB;

    public RegisterPetFunctions() {
        this.connectionDB = new ConnectionDB();
    }

    public List<String> getAllPetStatus() {
    String procedureCall = "{ ? = call petProcedures.getAllPetStatus }";
    List<String> petStatusList = new ArrayList<>();

    try (Connection connection = connectionDB.getConnection();
         CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
        callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
        callableStatement.execute();

        ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

        while (resultSet.next()) {
            String statusName = resultSet.getString("status_name");
            petStatusList.add(statusName);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return petStatusList;
}
    public List<String> getAllPetTypes() {
    String procedureCall = "{ ? = call petProcedures.getAllPetTypes }";
    List<String> petTypeList = new ArrayList<>();

    try (Connection connection = connectionDB.getConnection();
         CallableStatement callableStatement = connection.prepareCall(procedureCall)) {

        callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
        callableStatement.execute();

        ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

        while (resultSet.next()) {
            String petType = resultSet.getString("type_name");
            petTypeList.add(petType);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return petTypeList;
}    
    public List<String> getBreedsByPetType(String petType) {
    String procedureCall = "{ ? = call petProcedures.getBreedsByPetType(?) }";
    List<String> breedList = new ArrayList<>();

    try (Connection connection = connectionDB.getConnection();
         CallableStatement callableStatement = connection.prepareCall(procedureCall)) {

        callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
        callableStatement.setString(2, petType);
        callableStatement.execute();

        ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

        while (resultSet.next()) {
            String breedName = resultSet.getString("breed_name");
            breedList.add(breedName);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return breedList;
}
    public List<String> getAllPetColors() {
    String procedureCall = "{ ? = call petProcedures.getAllPetColors }";
    List<String> petColorList = new ArrayList<>();

    try (Connection connection = connectionDB.getConnection();
         CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
        // Registra el parámetro de salida para el cursor
        callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
        callableStatement.execute();

        // Obtiene el cursor del procedimiento
        ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

        while (resultSet.next()) {
            String colorName = resultSet.getString("color_name");
            petColorList.add(colorName);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return petColorList;
}
}



