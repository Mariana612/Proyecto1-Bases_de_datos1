/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;

import BD.RegisterPetFunctions;
import java.util.List;

/**
 *
 * @author marie
 */
public class RegisterPet extends javax.swing.JFrame {
    private RegisterPetFunctions registerPetFunctions; // Agrega esta variable
    
    /**
     * Creates new form Pet
     */
    public RegisterPet() {
        initComponents();
        registerPetFunctions = new RegisterPetFunctions();
        // Llama a la función getAllPetStatus para obtener la lista de estados de mascotas
        List<String> petStatusList = registerPetFunctions.getAllPetStatus();

        // Limpia el JComboBox para eliminar elementos previos si es necesario
        statusjComboBox.removeAllItems();

        // Agrega los estados de mascotas a JComboBox
        for (String status : petStatusList) {
        statusjComboBox.addItem(status);
        }
        
        typejComboBox.removeAllItems();
        
        // Llama a la función para obtener la lista de tipos de mascotas
        List<String> petTypes = registerPetFunctions.getAllPetTypes();
        
        // Agrega los valores al ComboBox
        for (String petType : petTypes) {
            typejComboBox.addItem(petType);
        }
   
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        nameTextfield = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel3 = new javax.swing.JLabel();
        chipTextfield = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        jLabel4 = new javax.swing.JLabel();
        statusjComboBox = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        typejComboBox = new javax.swing.JComboBox<>();
        jLabel6 = new javax.swing.JLabel();
        breedjComboBox = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        colorjComboBox = new javax.swing.JComboBox<>();
        TitleLabel = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        requiredFieldLabel = new javax.swing.JLabel();
        subirFotojButton = new javax.swing.JButton();
        nextjButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(840, 635));

        jPanel1.setBackground(new java.awt.Color(207, 232, 255));

        jLabel2.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 102, 153));
        jLabel2.setText("Chip");

        nameTextfield.setBackground(new java.awt.Color(207, 232, 255));
        nameTextfield.setForeground(new java.awt.Color(153, 153, 153));
        nameTextfield.setBorder(null);
        nameTextfield.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nameTextfieldActionPerformed(evt);
            }
        });

        jSeparator1.setForeground(new java.awt.Color(0, 102, 153));

        jLabel3.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 102, 153));
        jLabel3.setText("Name");

        chipTextfield.setBackground(new java.awt.Color(207, 232, 255));
        chipTextfield.setForeground(new java.awt.Color(153, 153, 153));
        chipTextfield.setBorder(null);
        chipTextfield.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chipTextfieldActionPerformed(evt);
            }
        });

        jSeparator2.setForeground(new java.awt.Color(0, 102, 153));

        jLabel4.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 102, 153));
        jLabel4.setText("Status*");

        statusjComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                statusjComboBoxActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 102, 153));
        jLabel5.setText("Type*");

        typejComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                typejComboBoxActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 102, 153));
        jLabel6.setText("Breed");

        breedjComboBox.addPopupMenuListener(new javax.swing.event.PopupMenuListener() {
            public void popupMenuCanceled(javax.swing.event.PopupMenuEvent evt) {
            }
            public void popupMenuWillBecomeInvisible(javax.swing.event.PopupMenuEvent evt) {
            }
            public void popupMenuWillBecomeVisible(javax.swing.event.PopupMenuEvent evt) {
                breedjComboBoxPopupMenuWillBecomeVisible(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 102, 153));
        jLabel7.setText("Color");

        colorjComboBox.addPopupMenuListener(new javax.swing.event.PopupMenuListener() {
            public void popupMenuCanceled(javax.swing.event.PopupMenuEvent evt) {
            }
            public void popupMenuWillBecomeInvisible(javax.swing.event.PopupMenuEvent evt) {
            }
            public void popupMenuWillBecomeVisible(javax.swing.event.PopupMenuEvent evt) {
                colorjComboBoxPopupMenuWillBecomeVisible(evt);
            }
        });
        colorjComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                colorjComboBoxActionPerformed(evt);
            }
        });

        TitleLabel.setFont(new java.awt.Font("Roboto", 1, 24)); // NOI18N
        TitleLabel.setForeground(new java.awt.Color(0, 102, 153));
        TitleLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TitleLabel.setText("Register Pet");
        TitleLabel.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(56, 56, 56)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(nameTextfield, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(chipTextfield, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(typejComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(statusjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(47, 47, 47)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(breedjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(colorjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(56, 56, 56)
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(22, 22, 22)
                        .addComponent(TitleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(97, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(TitleLabel)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 63, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(nameTextfield, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chipTextfield, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(50, 50, 50)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(statusjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(breedjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(42, 42, 42)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(colorjComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(typejComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(206, 206, 206))
        );

        jPanel2.setBackground(new java.awt.Color(102, 204, 255));

        requiredFieldLabel.setBackground(new java.awt.Color(255, 255, 255));
        requiredFieldLabel.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        requiredFieldLabel.setForeground(new java.awt.Color(0, 102, 153));
        requiredFieldLabel.setText("The fields with * are required!");

        subirFotojButton.setBackground(new java.awt.Color(51, 102, 255));
        subirFotojButton.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        subirFotojButton.setForeground(new java.awt.Color(255, 255, 255));
        subirFotojButton.setText("Upload photos");
        subirFotojButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                subirFotojButtonActionPerformed(evt);
            }
        });

        nextjButton.setBackground(new java.awt.Color(51, 102, 255));
        nextjButton.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        nextjButton.setForeground(new java.awt.Color(255, 255, 255));
        nextjButton.setText("Next");
        nextjButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nextjButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(67, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(requiredFieldLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 278, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(nextjButton, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(subirFotojButton)
                        .addGap(126, 126, 126))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(requiredFieldLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(56, 56, 56)
                .addComponent(subirFotojButton, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(178, 178, 178)
                .addComponent(nextjButton, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(244, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void nameTextfieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nameTextfieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_nameTextfieldActionPerformed

    private void chipTextfieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chipTextfieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_chipTextfieldActionPerformed

    private void subirFotojButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_subirFotojButtonActionPerformed

    }//GEN-LAST:event_subirFotojButtonActionPerformed

    private void nextjButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nextjButtonActionPerformed
        String name = nameTextfield.getText();
        String status = (String) statusjComboBox.getSelectedItem();
        String type = (String) typejComboBox.getSelectedItem();
        String breed = (String) breedjComboBox.getSelectedItem();
        String color = (String) colorjComboBox.getSelectedItem();
        String chipText = chipTextfield.getText(); 
        Integer chip = null;
        if (chipText != null && !chipText.isEmpty()) {
            chip = Integer.valueOf(chipText);
        }
        registerPetFunctions.insertPet(name, status, type, color, breed, chip);
    }//GEN-LAST:event_nextjButtonActionPerformed

    private void typejComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_typejComboBoxActionPerformed
        
    }//GEN-LAST:event_typejComboBoxActionPerformed

    private void colorjComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_colorjComboBoxActionPerformed
        
    }//GEN-LAST:event_colorjComboBoxActionPerformed

    private void statusjComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_statusjComboBoxActionPerformed
    
    }//GEN-LAST:event_statusjComboBoxActionPerformed

    private void breedjComboBoxPopupMenuWillBecomeVisible(javax.swing.event.PopupMenuEvent evt) {//GEN-FIRST:event_breedjComboBoxPopupMenuWillBecomeVisible
        String selectedValue = (String) typejComboBox.getSelectedItem();
        System.out.println(selectedValue);
        breedjComboBox.removeAllItems();
        
        // Llama a la función para obtener la lista de tipos de mascotas
        List<String> petBreeds = registerPetFunctions.getBreedsByPetType(selectedValue);
        
        // Agrega los valores al ComboBox
        for (String petBreed : petBreeds) {
            breedjComboBox.addItem(petBreed);
        }
    }//GEN-LAST:event_breedjComboBoxPopupMenuWillBecomeVisible

    private void colorjComboBoxPopupMenuWillBecomeVisible(javax.swing.event.PopupMenuEvent evt) {//GEN-FIRST:event_colorjComboBoxPopupMenuWillBecomeVisible
        colorjComboBox.removeAllItems();
        
        // Llama a la función para obtener la lista de tipos de mascotas
        List<String> petColors = registerPetFunctions.getAllPetColors();
        
        // Agrega los valores al ComboBox
        for (String petColor : petColors) {
            colorjComboBox.addItem(petColor);
        }
    }//GEN-LAST:event_colorjComboBoxPopupMenuWillBecomeVisible

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(RegisterPet.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RegisterPet.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RegisterPet.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RegisterPet.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RegisterPet().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel TitleLabel;
    private javax.swing.JComboBox<String> breedjComboBox;
    private javax.swing.JTextField chipTextfield;
    private javax.swing.JComboBox<String> colorjComboBox;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JTextField nameTextfield;
    private javax.swing.JButton nextjButton;
    private javax.swing.JLabel requiredFieldLabel;
    private javax.swing.JComboBox<String> statusjComboBox;
    private javax.swing.JButton subirFotojButton;
    private javax.swing.JComboBox<String> typejComboBox;
    // End of variables declaration//GEN-END:variables
}
