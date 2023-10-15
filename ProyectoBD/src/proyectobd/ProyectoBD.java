/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package proyectobd;

/**
 *
 * @author marie
 */
import BD.CallProcedureInPackage;
import Views.Login;
public class ProyectoBD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //CallProcedureInPackage.createJustPerson("Julio", "Rafael", "Jaramillo", "Guzman", "julioAOO", "motica12", "julio@gmail.com");
        //CallProcedureInPackage.callCreateUserPerson("Benito", "bad123");
        Login mainWindow = new Login(); 
        mainWindow.setVisible(true); 
    }
    
}
