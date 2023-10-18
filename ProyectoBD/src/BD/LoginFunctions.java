/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author fabian
 */
public class LoginFunctions {
    public static void createJustPerson(String firstName, String middleName, String firstLastname, String secondLastname,
                                        String username, String password, String email){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            // Establece la conexión a la base de datos utilizando la clase ConnectionDB
            ConnectionDB connection = new ConnectionDB();
            // Llama al procedimiento almacenado en el paquete
            String procedureCall = "{call createUser.insertJustPerson(?, ?, ?, ?, ?, ?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);

            // Configura los parámetros del procedimiento almacenado
            callableStatement.setString(1, firstName);
            callableStatement.setString(2, middleName);
            callableStatement.setString(3, firstLastname);
            callableStatement.setString(4, secondLastname);
            callableStatement.setString(5, username);
            callableStatement.setString(6, password);
            callableStatement.setString(7, email);
            
            // Ejecuta el procedimiento almacenado
            callableStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
                // Cierra la conexión utilizando la clase ConnectionDB
                connectionDB.desconectar();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } 

    public static boolean validateInput(String username, String password){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call loginPack.validateInput(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);

            callableStatement.setString(2, username);
            callableStatement.setString(3, password);
            
            
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
    public static String loginType(String username, String password){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call loginPack.loginMain(?, ?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.VARCHAR);

            callableStatement.setString(2, username);
            callableStatement.setString(3, password);
            
            
            callableStatement.execute();
            
            String resultado = callableStatement.getString(1);
            callableStatement.close();
            return resultado;
        } catch (SQLException e) {
            e.printStackTrace();
            return "";
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
    public static int getAmountContinents(){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getContinentAmount()}";
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
    
    public static String[] getAllContinents(){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getAllContinents()}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            
            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getAmountContinents();
            System.out.println("Cantidad");
            System.out.println(listSize);
            String[] continentList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("continent_name");
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

    public static int getCountryAmountByContinent(String continentName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getCountryAmountByContinent(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setString(2, continentName);

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
    
    public static String[] getCountriesByContinent(String continentName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getCountriesByContinentName( ? )}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setString(2, continentName);

            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getCountryAmountByContinent(continentName);

            String[] countryList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("country_name");
                countryList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return countryList;
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

    public static String[] CostaRicanProvinces(String countryName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getProvincesCostaRica( ? )}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setString(2, countryName);

            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = 7;

            String[] provinceList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("province_name");
                provinceList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return provinceList;
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

    public static int getCantonAmount(String provinceName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getCantonsProvAmount(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setString(2, provinceName);

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
    
    public static String[] cantonPerProvinces(String provinceName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getCantonsProvince( ? )}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setString(2, provinceName);

            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getCantonAmount(provinceName);

            String[] cantonList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("canton_name");
                cantonList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return cantonList;
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
    
    public static int getDistrictAmount(String cantonName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getDistrictsCNum(?)}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
            callableStatement.setString(2, cantonName);

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
   
    public static String[] districtsPerCanton(String cantonName){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getDistrictsCanton( ? )}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.setString(2, cantonName);

            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getDistrictAmount(cantonName);

            String[] cantonList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("district_name");
                cantonList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return cantonList;
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

    public static String[] getGenders(){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getGender( )}";
            callableStatement = connection.conn.prepareCall(procedureCall);
            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);

            callableStatement.execute();
            
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = 3;

            String[] genderList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("name_gender");
                genderList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
  
            return genderList;
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

    public static int getTelephoneTypeAmount(){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getTelTypeAmount()}";
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

    
    public static String[] getTelephoneTypes(){
        CallableStatement callableStatement = null;
        ConnectionDB connectionDB = new ConnectionDB();
        try {
            ConnectionDB connection = new ConnectionDB();
            String procedureCall = "{? = call frontEndPackage.getTelTypes( )}";
            callableStatement = connection.conn.prepareCall(procedureCall);            
            callableStatement.registerOutParameter(1, java.sql.Types.REF_CURSOR);
            callableStatement.execute();
          
            ResultSet res = (ResultSet) callableStatement.getObject(1);
            int listSize = getTelephoneTypeAmount();

            String[] phoneList = new String[listSize]; 
            int index = 0; 
            while(res.next()){
                String val = res.getString("type_name");
                phoneList[index] = val;
                index = index + 1;
            }
            res.close();
            callableStatement.close();
            return phoneList;
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
