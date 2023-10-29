/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author marie
 */
public class UpdatePetFunctions {
    private ConnectionDB connectionDB;

    public UpdatePetFunctions() {
        this.connectionDB = new ConnectionDB();
    }

    public DefaultTableModel executePetQuery(String rescuerId) {
        DefaultTableModel model = new DefaultTableModel();
        model.addColumn("id");
        model.addColumn("chip");
        model.addColumn("pet_name");
        model.addColumn("status_name");
        model.addColumn("type_name");
        model.addColumn("color_name");
        model.addColumn("breed_name");
        model.addColumn("amount_spent");
        model.addColumn("date_in");

        try {
            Connection connection = connectionDB.getConnection();
            Statement stmt = connection.createStatement();

            String sql = "SELECT p.id, p.chip, p.pet_name, ps.status_name, pt.type_name, c.color_name, b.breed_name, rp.amount_spent, rp.date_in " +
                         "FROM pet p " +
                         "INNER JOIN rescuerxpet rp ON p.id = rp.id_pet " +
                         "INNER JOIN pet_status ps ON p.id_pet_status = ps.id " +
                         "INNER JOIN pet_type pt ON p.id_pet_type = pt.id " +
                         "LEFT JOIN color c ON p.id_color = c.id " +
                         "LEFT JOIN breed b ON p.id_breed = b.id " +
                         "WHERE rp.id_rescuer = " + rescuerId;

            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id");
                int chip = rs.getInt("chip");
                String petName = rs.getString("pet_name");
                String statusName = rs.getString("status_name");
                String typeName = rs.getString("type_name");
                String colorName = rs.getString("color_name");
                String breedName = rs.getString("breed_name");
                int amountSpent = rs.getInt("amount_spent");
                String dateIn = rs.getString("date_in");

                model.addRow(new Object[]{id, chip, petName, statusName, typeName, colorName, breedName, amountSpent, dateIn});
            }

            rs.close();
            stmt.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return model;
    }
    public String updatePetName(int idPet, String newName) {
        String result = null;
        try {
            Connection connection = connectionDB.getConnection();
            // Llama a la función del paquete Oracle
            CallableStatement cstmt = connection.prepareCall("{ ? = call updatePetPackage.updatePetName(?, ?) }");
            cstmt.registerOutParameter(1, java.sql.Types.VARCHAR); // Tipo de retorno
            cstmt.setInt(2, idPet);
            cstmt.setString(3, newName);
            cstmt.execute();

            result = cstmt.getString(1); // Obtén el resultado de la función

            cstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public String updatePetChip(int idPet, int newChip) {
    String result = null;
    try {
        Connection connection = connectionDB.getConnection();
        // Llama a la función del paquete Oracle
        CallableStatement cstmt = connection.prepareCall("{ ? = call updatePetPackage.updatePetChip(?, ?) }");
        cstmt.registerOutParameter(1, java.sql.Types.VARCHAR); // Tipo de retorno
        cstmt.setInt(2, idPet);
        cstmt.setInt(3, newChip);
        cstmt.execute();

        result = cstmt.getString(1); // Obtén el resultado de la función

        cstmt.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
        return result;
    }
    public String updatePetAmountSpent(int idPerson, int idPet, int newAmount) {
        String result = null;
        try {
            Connection connection = connectionDB.getConnection();
            // Llama a la función del paquete Oracle
            CallableStatement cstmt = connection.prepareCall("{ ? = call updatePetPackage.updatePetAmountSpent(?, ?, ?) }");
            cstmt.registerOutParameter(1, java.sql.Types.VARCHAR); // Tipo de retorno
            cstmt.setInt(2, idPerson);
            cstmt.setInt(3, idPet);
            cstmt.setInt(4, newAmount);
            cstmt.execute();

            result = cstmt.getString(1); // Obtén el resultado de la función

            cstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public String updatePetDateIn(int idPerson, int idPet, String newDate) {
        String result = null;
        try {
            Connection connection = connectionDB.getConnection();
            // Llama a la función del paquete Oracle
            CallableStatement cstmt = connection.prepareCall("{ ? = call updatePetPackage.updatePetDateIn(?, ?, ?) }");
            cstmt.registerOutParameter(1, java.sql.Types.VARCHAR); // Tipo de retorno
            cstmt.setInt(2, idPerson);
            cstmt.setInt(3, idPet);
            cstmt.setString(4, newDate);
            cstmt.execute();

            result = cstmt.getString(1); // Obtén el resultado de la función

            cstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}

