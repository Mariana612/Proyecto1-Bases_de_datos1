/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.proyecto1bd;

import Connection.ConnectDB;
import java.sql.SQLException;

/**
 *
 * @author fabian
 */
public class Proyecto1BD {

    public static void main(String[] args) throws SQLException{
        // System.out.println("Hello World!");
        ConnectDB.insertPerson("San Antonio", "Coronado", "San Jose", "Costa Rica", "Centroamerica", "Juanito", "Antonio", "Sanchez", "Soto"); 
    }
}
