/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;
import java.sql.Connection;
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


        try {
            Connection connection = connectionDB.getConnection();
            Statement stmt = connection.createStatement();

            String sql = "SELECT p.id, p.chip, p.pet_name FROM pet p " +
                         "INNER JOIN rescuerxpet rp ON p.id = rp.id_pet " +
                         "WHERE rp.id_rescuer = " + rescuerId;

            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id");
                int chip = rs.getInt("chip");
                String petName = rs.getString("pet_name");
                model.addRow(new Object[]{id, chip, petName});
            }


            rs.close();
            stmt.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return model;
    }
}

