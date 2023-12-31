 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;

import BD.LoginFunctions;
import java.awt.event.ActionEvent;


/**
 *
 * @author fabian
 */
public class AssoRescMain extends javax.swing.JFrame {

    /**
     * Creates new form Login
     */
    
    private int pidPerson;
    private int typeUser;
    public AssoRescMain(int idPerson) {

        initComponents();
        this.pidPerson = idPerson;
    }
    
    public AssoRescMain(int idPerson, int typeUser){
        initComponents();
        this.pidPerson = idPerson;
        this.typeUser = typeUser;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLayeredPane1 = new javax.swing.JLayeredPane();
        jPanel2 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        TitleLabel = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        TitleLabel1 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        LostPet = new javax.swing.JButton();
        UpdatePet = new javax.swing.JButton();
        ReviewCandidate = new javax.swing.JButton();
        CheckAdoptionForms = new javax.swing.JButton();
        BlackList = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();

        javax.swing.GroupLayout jLayeredPane1Layout = new javax.swing.GroupLayout(jLayeredPane1);
        jLayeredPane1.setLayout(jLayeredPane1Layout);
        jLayeredPane1Layout.setHorizontalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jLayeredPane1Layout.setVerticalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        jPanel1.setBackground(new java.awt.Color(0, 102, 153));
        jPanel1.setForeground(new java.awt.Color(0, 102, 153));

        TitleLabel.setFont(new java.awt.Font("Roboto", 1, 36)); // NOI18N
        TitleLabel.setForeground(new java.awt.Color(255, 255, 255));
        TitleLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TitleLabel.setText("PawsitiveAdoptions");
        TitleLabel.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(TitleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 354, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(220, 220, 220))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(39, Short.MAX_VALUE)
                .addComponent(TitleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(24, 24, 24))
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(207, 232, 255));
        setMinimumSize(new java.awt.Dimension(840, 635));
        setSize(new java.awt.Dimension(840, 635));

        jPanel3.setBackground(new java.awt.Color(207, 232, 255));

        jPanel4.setBackground(new java.awt.Color(0, 102, 153));
        jPanel4.setForeground(new java.awt.Color(0, 102, 153));

        TitleLabel1.setFont(new java.awt.Font("Roboto", 1, 36)); // NOI18N
        TitleLabel1.setForeground(new java.awt.Color(255, 255, 255));
        TitleLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TitleLabel1.setText("Management");
        TitleLabel1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(187, 187, 187)
                .addComponent(TitleLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 466, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(29, Short.MAX_VALUE)
                .addComponent(TitleLabel1)
                .addGap(24, 24, 24))
        );

        jPanel5.setBackground(new java.awt.Color(242, 255, 254));
        jPanel5.setBorder(javax.swing.BorderFactory.createMatteBorder(4, 4, 4, 4, new java.awt.Color(255, 255, 255)));
        jPanel5.setLayout(new java.awt.GridLayout(3, 2, 200, 50));

        LostPet.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        LostPet.setText("Register Lost Pet");
        LostPet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LostPetActionPerformed(evt);
            }
        });
        jPanel5.add(LostPet);

        UpdatePet.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        UpdatePet.setText("Update Registered Pets");
        UpdatePet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                UpdatePetActionPerformed(evt);
            }
        });
        jPanel5.add(UpdatePet);

        ReviewCandidate.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        ReviewCandidate.setText("Review Candidates");
        ReviewCandidate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ReviewCandidateActionPerformed(evt);
            }
        });
        jPanel5.add(ReviewCandidate);

        CheckAdoptionForms.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        CheckAdoptionForms.setText("Check Adoption Forms");
        CheckAdoptionForms.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CheckAdoptionFormsActionPerformed(evt);
            }
        });
        jPanel5.add(CheckAdoptionForms);

        BlackList.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 18)); // NOI18N
        BlackList.setText("Black List");
        BlackList.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BlackListActionPerformed(evt);
            }
        });
        jPanel5.add(BlackList);

        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jButton1.setText("EXIT");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(91, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(87, 87, 87))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(148, 148, 148))))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(97, 97, 97)
                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, 295, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(51, 51, 51)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 53, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 44, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void LostPetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LostPetActionPerformed
        RegisterPetAssociationRescuer windowRegisterPet = new RegisterPetAssociationRescuer(pidPerson);
        windowRegisterPet.setVisible(true);
        dispose();
    }//GEN-LAST:event_LostPetActionPerformed

    

    private void CheckAdoptionFormsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CheckAdoptionFormsActionPerformed
                CheckFormSubmissionMain checkFormMain = new CheckFormSubmissionMain(pidPerson);
                checkFormMain.setVisible(true);
                dispose();
    }//GEN-LAST:event_CheckAdoptionFormsActionPerformed

    private void BlackListActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BlackListActionPerformed
        BlackListMenu bMenu = new BlackListMenu(pidPerson);
        bMenu.setVisible(true);
        dispose();
    }//GEN-LAST:event_BlackListActionPerformed
                                               

    private void UpdatePetActionPerformed(java.awt.event.ActionEvent evt) {                                          
        UpdatePet windowUpdatePet = new UpdatePet(pidPerson);
        windowUpdatePet.setVisible(true);
        dispose();
    }                                         

    private void ReviewCandidateActionPerformed(java.awt.event.ActionEvent evt) {                                                
        ReviewCandidate revwindow = new ReviewCandidate(pidPerson);
        revwindow.setVisible(true);
        dispose();
                   
    }                                               

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        Login loginwindow = new Login();
        loginwindow.setVisible(true);
        dispose();
    }                                        

    /**
     * @param args the command line arguments
     */
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
//            java.util.logging.Logger.getLogger(AssoRescMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(AssoRescMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(AssoRescMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(AssoRescMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//        //</editor-fold>
//        //</editor-fold>
//        //</editor-fold>
//
//        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new AssoRescMain().setVisible(true);
//            }
//        });
//    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BlackList;
    private javax.swing.JButton CheckAdoptionForms;
    private javax.swing.JButton LostPet;
    private javax.swing.JButton ReviewCandidate;
    private javax.swing.JLabel TitleLabel;
    private javax.swing.JLabel TitleLabel1;
    private javax.swing.JButton UpdatePet;
    private javax.swing.JButton jButton1;
    private javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    // End of variables declaration//GEN-END:variables
}
