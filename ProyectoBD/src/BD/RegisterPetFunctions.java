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
import java.sql.Types;

public class RegisterPetFunctions {
    private ConnectionDB connectionDB;

    public RegisterPetFunctions() {
        this.connectionDB = new ConnectionDB();
    }
    public Integer insertPet(String pcName, String pcPetStatus, String pcPetType, String pcColor, String pcBreed, Integer pnChip, int pnPersonId, Double pnAmountSpent, String pDateIn) {
    String procedureCall = "{ ? = call petProcedures.insertPet(?, ?, ?, ?, ?, ?, ?, ?, ?) }";
    Integer petId = null;

    try (Connection connection = connectionDB.getConnection();
         CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
        callableStatement.registerOutParameter(1, Types.INTEGER);
        callableStatement.setString(2, pcName);
        callableStatement.setString(3, pcPetStatus);
        callableStatement.setString(4, pcPetType);
        callableStatement.setString(5, pcColor);
        callableStatement.setString(6, pcBreed);

        if (pnChip == null) {
            callableStatement.setNull(7, Types.INTEGER);
        } else {
            callableStatement.setInt(7, pnChip);
        }

        callableStatement.setInt(8, pnPersonId);

        // Pasar el nuevo parámetro pnAmountSpent como Double
        if (pnAmountSpent == null) {
            callableStatement.setNull(9, Types.DOUBLE);
        } else {
            callableStatement.setDouble(9, pnAmountSpent);
        }

        // Pasar el parámetro de fecha pDateIn
        callableStatement.setString(10, pDateIn);

        callableStatement.execute();
        petId = callableStatement.getInt(1);
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return petId;
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
    public String callInsertPetPhoto(Integer petId, String pcImagePath) {
        String procedureCall = "{ ? = call petProcedures.insertPetPhoto(?, ?) }";
        String resultMessage = null;

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            // Registrar el parámetro de salida para el mensaje de resultado
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            callableStatement.setInt(2, petId);
            callableStatement.setString(3, pcImagePath);

            // Ejecutar la llamada al procedimiento almacenado
            callableStatement.execute();

            // Obtener el mensaje de resultado
            resultMessage = callableStatement.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultMessage;
    }
    public List<String> getAllEnergy() {
        String procedureCall = "{ ? = call petProcedures.getAllEnergy }";
        List<String> energyList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String energyDescription = resultSet.getString("energy_description");
                energyList.add(energyDescription);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return energyList;
    }

    public List<String> getAllTraining() {
        String procedureCall = "{ ? = call petProcedures.getAllTraining }";
        List<String> trainingList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String trainingDescription = resultSet.getString("training_description");
                trainingList.add(trainingDescription);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return trainingList;
    }

    public List<String> getAllIllness() {
        String procedureCall = "{ ? = call petProcedures.getAllIllness }";
        List<String> illnessList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String illnessDescription = resultSet.getString("illness_description");
                illnessList.add(illnessDescription);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return illnessList;
    }

    public List<String> getTreatmentsByIllness(String pcIllness) {
        String procedureCall = "{ ? = call petProcedures.getTreatmentsByIllness(?) }";
        List<String> treatmentList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.setString(2, pcIllness);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String treatmentDescription = resultSet.getString("treatment_description");
                treatmentList.add(treatmentDescription);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return treatmentList;
    }

    public List<String> getAllSeverity() {
        String procedureCall = "{ ? = call petProcedures.getAllSeverity }";
        List<String> severityList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String severityDescription = resultSet.getString("severity_description");
                severityList.add(severityDescription);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return severityList;
    }
    public String insertRescued(
        int pnIdPet,
        String pcNotes,
        String pcSpace,
        String pcEnergy,
        String pcTraining,
        String pcIllness,
        String pcSeverity,
        String pcDistrictN,
        String pcCantonN
        ) {
            String procedureCall = "{ ? = call petProcedures.insertRescued(?, ?, ?, ?, ?, ?, ?, ?, ?) }";
            String resultMessage = "Inserción exitosa"; // Supongamos que la inserción es exitosa por defecto

            try (Connection connection = connectionDB.getConnection();
                 CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
                callableStatement.registerOutParameter(1, Types.VARCHAR);
                callableStatement.setInt(2, pnIdPet);
                callableStatement.setString(3, pcNotes);
                callableStatement.setString(4, pcSpace);
                callableStatement.setString(5, pcEnergy);
                callableStatement.setString(6, pcTraining);
                callableStatement.setString(7, pcIllness);
                callableStatement.setString(8, pcSeverity);
                callableStatement.setString(9, pcDistrictN);
                callableStatement.setString(10, pcCantonN);

                callableStatement.execute();
                resultMessage = callableStatement.getString(1);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return resultMessage;
        }
    
    public String insertPhotoBefore(int idPet, String imagePath) {
        String procedureCall = "{ ? = call petProcedures.insertPhotoBefore(?, ?) }";
        String errorMessage = "The photo insertion was successful";

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            callableStatement.setInt(2, idPet);
            callableStatement.setString(3, imagePath);
            callableStatement.execute();

            errorMessage = callableStatement.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return errorMessage;
    }

    public String insertPhotoAfter(int idPet, String imagePath) {
        String procedureCall = "{ ? = call petProcedures.insertPhotoAfter(?, ?) }";
        String errorMessage = "The photo insertion was successful";

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            callableStatement.setInt(2, idPet);
            callableStatement.setString(3, imagePath);
            callableStatement.execute();

            errorMessage = callableStatement.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return errorMessage;
    }
    public List<String> getAllCurrency() {
        String procedureCall = "{ ? = call petProcedures.getAllCurrency }";
        List<String> currencyList = new ArrayList<>();

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet resultSet = (ResultSet) callableStatement.getObject(1);

            while (resultSet.next()) {
                String currencyName = resultSet.getString("currency_name");
                currencyList.add(currencyName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return currencyList;
    }
    public String insertLost(int pnIdPet, String pnDateLost, Integer pnBounty, String pcCurrency, String pcDistrictN, String pcCantonN) {
        String procedureCall = "{ ? = call petProcedures.insertLost(?, ?, ?, ?, ?, ?) }";
        String errorMessage = "The lost pet insertion was successful";

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            callableStatement.setInt(2, pnIdPet);
            callableStatement.setString(3, pnDateLost);

            if (pnBounty == null) {
                callableStatement.setNull(4, Types.INTEGER);
            } else {
                callableStatement.setInt(4, pnBounty);
            }

            callableStatement.setString(5, pcCurrency);
            callableStatement.setString(6, pcDistrictN);
            callableStatement.setString(7, pcCantonN); // Agregar el parámetro pcCantonN

            callableStatement.execute();

            errorMessage = callableStatement.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return errorMessage;
    }

    public String insertfound(int pnIdPet, String pnDateFound, String pcDistrictN, String pcCantonN) {
        String procedureCall = "{ ? = call petProcedures.insertfound(?, ?, ?, ?) }";
        String errorMessage = "The found pet insertion was successful";

        try (Connection connection = connectionDB.getConnection();
             CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            callableStatement.setInt(2, pnIdPet);
            callableStatement.setString(3, pnDateFound);
            callableStatement.setString(4, pcDistrictN);
            callableStatement.setString(5, pcCantonN); // Agregar el parámetro pcCantonN

            callableStatement.execute();

            errorMessage = callableStatement.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
            errorMessage = "Error: An unexpected error occurred during the insertion.";
        }

        return errorMessage;
    }

    


}



