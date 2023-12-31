/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;

import javax.swing.JOptionPane;

/**
 *
 * @author fabia
 */
public class SelectIndividual extends javax.swing.JFrame {

    /**
     * Creates new form SelectIndividual
     */
    public SelectIndividual() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        warningDialog = new javax.swing.JDialog();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        rescuerPanel = new javax.swing.JPanel();
        rescuerRadioBtn = new javax.swing.JRadioButton();
        jLabel2 = new javax.swing.JLabel();
        fosterPanel = new javax.swing.JPanel();
        fosterRadioBtn = new javax.swing.JRadioButton();
        jLabel5 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        fosterPanel1 = new javax.swing.JPanel();
        normalRadioBtn = new javax.swing.JRadioButton();
        jLabel6 = new javax.swing.JLabel();
        selectButton = new javax.swing.JButton();

        javax.swing.GroupLayout warningDialogLayout = new javax.swing.GroupLayout(warningDialog.getContentPane());
        warningDialog.getContentPane().setLayout(warningDialogLayout);
        warningDialogLayout.setHorizontalGroup(
            warningDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        warningDialogLayout.setVerticalGroup(
            warningDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(840, 640));
        setMinimumSize(new java.awt.Dimension(840, 640));
        setPreferredSize(new java.awt.Dimension(840, 640));
        setResizable(false);
        setSize(new java.awt.Dimension(840, 640));

        jPanel1.setBackground(new java.awt.Color(207, 232, 255));

        jPanel2.setBackground(new java.awt.Color(0, 102, 255));

        rescuerPanel.setBackground(new java.awt.Color(245, 243, 228));

        rescuerRadioBtn.setBackground(new java.awt.Color(245, 243, 228));
        buttonGroup1.add(rescuerRadioBtn);
        rescuerRadioBtn.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        rescuerRadioBtn.setText("Rescuer");
        rescuerRadioBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rescuerRadioBtnActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Segoe UI Light", 3, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(51, 51, 51));
        jLabel2.setText("Register rescued pets, select candidates for adoption");

        javax.swing.GroupLayout rescuerPanelLayout = new javax.swing.GroupLayout(rescuerPanel);
        rescuerPanel.setLayout(rescuerPanelLayout);
        rescuerPanelLayout.setHorizontalGroup(
            rescuerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(rescuerPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(rescuerRadioBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 98, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 39, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(35, 35, 35))
        );
        rescuerPanelLayout.setVerticalGroup(
            rescuerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(rescuerPanelLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(rescuerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rescuerRadioBtn)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(19, Short.MAX_VALUE))
        );

        fosterPanel.setBackground(new java.awt.Color(245, 243, 228));

        fosterRadioBtn.setBackground(new java.awt.Color(245, 243, 228));
        buttonGroup1.add(fosterRadioBtn);
        fosterRadioBtn.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        fosterRadioBtn.setText("Foster Home");
        fosterRadioBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fosterRadioBtnActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Segoe UI Light", 3, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(51, 51, 51));
        jLabel5.setText("Help pets in need have a temporay home");

        javax.swing.GroupLayout fosterPanelLayout = new javax.swing.GroupLayout(fosterPanel);
        fosterPanel.setLayout(fosterPanelLayout);
        fosterPanelLayout.setHorizontalGroup(
            fosterPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fosterPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(fosterRadioBtn)
                .addGap(26, 26, 26)
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        fosterPanelLayout.setVerticalGroup(
            fosterPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fosterPanelLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(fosterPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(fosterRadioBtn)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(19, Short.MAX_VALUE))
        );

        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(213, 241, 241));
        jLabel1.setText("Select the type of user you want to create: ");

        fosterPanel1.setBackground(new java.awt.Color(245, 243, 228));

        normalRadioBtn.setBackground(new java.awt.Color(245, 243, 228));
        buttonGroup1.add(normalRadioBtn);
        normalRadioBtn.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        normalRadioBtn.setText("Normal");
        normalRadioBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                normalRadioBtnActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Segoe UI Light", 3, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(51, 51, 51));
        jLabel6.setText("Register lost pets, apply for adoption, etc.");

        javax.swing.GroupLayout fosterPanel1Layout = new javax.swing.GroupLayout(fosterPanel1);
        fosterPanel1.setLayout(fosterPanel1Layout);
        fosterPanel1Layout.setHorizontalGroup(
            fosterPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fosterPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(normalRadioBtn)
                .addGap(26, 26, 26)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        fosterPanel1Layout.setVerticalGroup(
            fosterPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fosterPanel1Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(fosterPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(normalRadioBtn)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(19, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 374, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(114, 114, 114))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(69, 69, 69)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(rescuerPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(fosterPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(fosterPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(59, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(rescuerPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(fosterPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(fosterPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(141, Short.MAX_VALUE))
        );

        selectButton.setBackground(new java.awt.Color(51, 102, 255));
        selectButton.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
        selectButton.setForeground(new java.awt.Color(255, 255, 255));
        selectButton.setText("Next >");
        selectButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                selectButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(116, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(selectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(324, 324, 324))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(97, 97, 97))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(24, 24, 24)
                .addComponent(selectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void rescuerRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rescuerRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rescuerRadioBtnActionPerformed

    private void fosterRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fosterRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_fosterRadioBtnActionPerformed

    private void selectButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_selectButtonActionPerformed
        String uType; 
        if(rescuerRadioBtn.isSelected()){
            uType = "Rescuer";
        }
        
        else if(normalRadioBtn.isSelected()){
            uType = "Normal";
        }
        else if(fosterRadioBtn.isSelected()){
            uType = "Foster Home";
        }
        else{
            uType = "";
            // jOptionPane war = new jOptionPane();
            JOptionPane.showMessageDialog(this, "Please choose an option to continue", "Option selection needed", JOptionPane.ERROR_MESSAGE);
            return;
        }
        Register regWindow = new Register(uType);
        regWindow.setVisible(true);
        dispose();
        
    }//GEN-LAST:event_selectButtonActionPerformed

    private void normalRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_normalRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_normalRadioBtnActionPerformed

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
            java.util.logging.Logger.getLogger(SelectIndividual.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SelectIndividual.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SelectIndividual.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SelectIndividual.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SelectIndividual().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JPanel fosterPanel;
    private javax.swing.JPanel fosterPanel1;
    private javax.swing.JRadioButton fosterRadioBtn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JRadioButton normalRadioBtn;
    private javax.swing.JPanel rescuerPanel;
    private javax.swing.JRadioButton rescuerRadioBtn;
    private javax.swing.JButton selectButton;
    private javax.swing.JDialog warningDialog;
    // End of variables declaration//GEN-END:variables
}
