/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import Views.NormalUserMain;
import java.awt.BorderLayout;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;


/**
 *
 * @author maria
 */
public class NormalUserFunctions {
    public NormalUserFunctions(){}
    public void displayPets(NormalUserMain something){
            ArrayList<String> imagePaths = new ArrayList<>();
            ArrayList<String> imageTexts = new ArrayList<>();

            // Add your image paths and text here
            imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 1");
            imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 2");
                        imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 3");
            imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 1");
            imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 2");
                        imagePaths.add("/Images/perritosenadopcion (1).jpg");
            imageTexts.add("Image 3");
            
            for (int i = 0; i < imagePaths.size(); i++) {
            String imagePath = imagePaths.get(i);
            String imageText = imageTexts.get(i);
            
            

            ImageIcon icon = new ImageIcon(getClass().getResource(imagePath));
            JLabel imageLabel = new JLabel(icon);

            JLabel textLabel = new JLabel(imageText);

            JPanel imageTextPanel = new JPanel(new BorderLayout());
            imageTextPanel.add(imageLabel, BorderLayout.WEST);
            imageTextPanel.add(textLabel, BorderLayout.CENTER);

            something.PetDisplay.add(imageTextPanel);
        }


//        something.PetDisplay
        
    
    }

    
}

