/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;
import BD.NormalUserFunctions;
import static BD.NormalUserFunctions.getphotopet;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.lang.String;
/**
 *
 * @author fabia
 */
public class NormalUserMain extends javax.swing.JFrame {
    public String vUserTupe;
    public int pidPerson;
    /**
     * Creates new form NormalUserMain
     */
    public NormalUserMain(int idPerson, String userType) {
        vUserTupe = userType;
        initComponents();
        addComponents(idPerson,userType);
        pidPerson = idPerson;
//        NormalUserFunctions.displayPets(this);
//        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        PetDisplay = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(840, 635));
        setMinimumSize(new java.awt.Dimension(840, 635));
        setSize(new java.awt.Dimension(840, 635));

        jPanel2.setBackground(new java.awt.Color(0, 102, 153));

        jButton1.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Do you want to report a lost pet?");
        jButton1.setBorder(null);
        jButton1.setBorderPainted(false);
        jButton1.setContentAreaFilled(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 420, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(30, Short.MAX_VALUE))
        );

        PetDisplay.setLayout(new java.awt.GridLayout(1, 2));

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(PetDisplay, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(PetDisplay, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel1.setText("You can se some of the pets that are at disposition");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addContainerGap(381, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 53, Short.MAX_VALUE)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(282, Short.MAX_VALUE))
        );

        jScrollPane1.setViewportView(jPanel1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        RegisterPetOwner windowRegisterPetOwner = new RegisterPetOwner(pidPerson);
        windowRegisterPetOwner.setVisible(true);
        dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
private ImageIcon resizeImage(String imagePath, int width, int height) {
    ImageIcon originalIcon = new ImageIcon(getClass().getResource(imagePath));
    Image image = originalIcon.getImage();
    Image resizedImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
    return new ImageIcon(resizedImage);
}

private void addComponents(int idPerson, String userType) {
    ArrayList<String> imageTexts = new ArrayList<>();
    ArrayList<Integer> petIds = new ArrayList<>();
    ArrayList<String> petStatus = new ArrayList<>();
    

    String[] pets = NormalUserFunctions.getAllPets();
    int[] petidv = NormalUserFunctions.getAllPetsID();
     String[] petsStat = NormalUserFunctions.getAllStatus();

    if (pets.length != 0) {
        for (int i = 0; i < pets.length; i++) {
            imageTexts.add(pets[i]);
        }

        for (int i = 0; i < petidv.length; i++) {
            petIds.add(petidv[i]);
        }
        for (int i = 0; i < petsStat.length; i++) {
            petStatus.add(petsStat[i]);
        }


        PetDisplay.setLayout(new GridLayout(0, 1)); // 0 rows and 1 column

//        ArrayList<String> imagePaths = new ArrayList<>();
//
//        // Add your image paths and text here
//        imagePaths.add("/Images/perritosenadopcion (1).jpg");
//        //imagePaths.add("/Images/perritosenadopcion (1).jpg");
//
        int imageWidth = 400; // Set the width you want for the images
        int imageHeight = 300; // Set the height you want for the images

        for (int i = 0; i < petidv.length; i++) {
            String imagePath = getphotopet(petidv[i]);
            System.out.println(imagePath);
            String imageText = imageTexts.get(i);
            int petId = petIds.get(i);

            ImageIcon resizedIcon = resizeImage(imagePath, imageWidth, imageHeight);

            JLabel imageLabel = new JLabel(resizedIcon);
            JLabel textLabel = new JLabel(imageText);
            Font newFont = new Font("Roboto", Font.BOLD, 20);
            textLabel.setFont(newFont);

            // Create a button for each image
            Color customColor = new Color(0, 102, 153);

            

            JPanel imageTextPanel = new JPanel(new BorderLayout());

            // Add a 20px gap to the right of the image
            imageLabel.setBorder(BorderFactory.createEmptyBorder(20, 0, 10, 20));

            imageTextPanel.add(imageLabel, BorderLayout.WEST);
            imageTextPanel.add(textLabel, BorderLayout.CENTER);
            if(petStatus.get(i).equals("Rescued")){
            JButton imageButton = new JButton("ADOPT ME");
            imageButton.setFont(newFont);
            imageButton.setForeground(Color.WHITE);
            imageButton.setBackground(customColor);

            imageButton.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    int check = NormalUserFunctions.checkFormExistance(petId, idPerson);

                    if (check == 0) {
                        NormalUserFunctions.createForm(petId, idPerson);
                    }
                    AdoptionForm adoptionWindow = new AdoptionForm(idPerson, petId, userType);
                    adoptionWindow.setVisible(true);
                    dispose();
                }
            });
            imageTextPanel.add(imageButton, BorderLayout.SOUTH);
            }
            

            PetDisplay.add(imageTextPanel);
        
        } 
            if ("Candidate".equals(userType)) {
        JButton adoptTest = new JButton("Check Adoption Test Results");
        adoptTest.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CheckResult checkResultWindow = new CheckResult(idPerson, userType);
                checkResultWindow.setVisible(true);
                dispose();
            }
        });

        // Add the "Check Adoption Test Results" button
        jPanel4.add(adoptTest);
    }

    if ("Owner".equals(userType)) {
        JButton checkReg = new JButton("Check pet Registration");
        checkReg.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                System.out.println("pressed");
            }
        });

        // Add the "Check pet Registration" button
        jPanel4.add(checkReg);
        if(NormalUserFunctions.checkForCandidate(idPerson) == 1){
                JButton adoptTest = new JButton("Check Adoption Test Results");
        adoptTest.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CheckResult checkResultWindow = new CheckResult(idPerson, userType);
                checkResultWindow.setVisible(true);
                dispose();
            }
        });

        // Add the "Check Adoption Test Results" button
        jPanel4.add(adoptTest);
        }
    }
    }
}
    /**
     * @param args the command line arguments
//     */
//    public static void main(String args[]) {
//        /* Set the Nimbus look and feel */
//        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
//        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
//         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
//         */
//        try {
//            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
//                if ("Nimbus".equals(info.getName())) {
//                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
//                    break;
//                }
//            }
//        } catch (ClassNotFoundException ex) {
//            java.util.logging.Logger.getLogger(NormalUserMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(NormalUserMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(NormalUserMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(NormalUserMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        
//        
//        //</editor-fold>
//
//        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new NormalUserMain(int idPerson).setVisible(true);
//            }
//        });
//    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JPanel PetDisplay;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}
