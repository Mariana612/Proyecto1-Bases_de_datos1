/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;

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
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        rescuerPanel = new javax.swing.JPanel();
        rescuerRadioBtn = new javax.swing.JRadioButton();
        jLabel2 = new javax.swing.JLabel();
        candidatePanel = new javax.swing.JPanel();
        candidateRadioBtn = new javax.swing.JRadioButton();
        jLabel3 = new javax.swing.JLabel();
        ownerPanel = new javax.swing.JPanel();
        ownerRadioBtn = new javax.swing.JRadioButton();
        jLabel4 = new javax.swing.JLabel();
        fosterPanel = new javax.swing.JPanel();
        fosterRadioBtn = new javax.swing.JRadioButton();
        jLabel5 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        selectButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(840, 640));
        setMinimumSize(new java.awt.Dimension(840, 640));
        setPreferredSize(new java.awt.Dimension(840, 640));
        setResizable(false);
        setSize(new java.awt.Dimension(840, 640));

        jPanel1.setBackground(new java.awt.Color(255, 204, 255));

        rescuerPanel.setBackground(new java.awt.Color(255, 255, 255));

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

        candidatePanel.setBackground(new java.awt.Color(255, 255, 255));

        buttonGroup1.add(candidateRadioBtn);
        candidateRadioBtn.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        candidateRadioBtn.setText("Candidate");
        candidateRadioBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                candidateRadioBtnActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Segoe UI Light", 3, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(51, 51, 51));
        jLabel3.setText("Apply to adopt a pet!");

        javax.swing.GroupLayout candidatePanelLayout = new javax.swing.GroupLayout(candidatePanel);
        candidatePanel.setLayout(candidatePanelLayout);
        candidatePanelLayout.setHorizontalGroup(
            candidatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(candidatePanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(candidateRadioBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(36, 36, 36)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 233, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        candidatePanelLayout.setVerticalGroup(
            candidatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(candidatePanelLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(candidatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(candidateRadioBtn)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(28, Short.MAX_VALUE))
        );

        ownerPanel.setBackground(new java.awt.Color(255, 255, 255));

        buttonGroup1.add(ownerRadioBtn);
        ownerRadioBtn.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        ownerRadioBtn.setText("Owner");
        ownerRadioBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ownerRadioBtnActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Segoe UI Light", 3, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(51, 51, 51));
        jLabel4.setText("Register your own pets if lost, found");

        javax.swing.GroupLayout ownerPanelLayout = new javax.swing.GroupLayout(ownerPanel);
        ownerPanel.setLayout(ownerPanelLayout);
        ownerPanelLayout.setHorizontalGroup(
            ownerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ownerPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(ownerRadioBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(51, 51, 51)
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 233, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        ownerPanelLayout.setVerticalGroup(
            ownerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ownerPanelLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(ownerPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ownerRadioBtn)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(19, Short.MAX_VALUE))
        );

        fosterPanel.setBackground(new java.awt.Color(255, 255, 255));

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
        jLabel1.setForeground(new java.awt.Color(51, 51, 51));
        jLabel1.setText("Select the type of user you want to create: ");

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
                    .addComponent(ownerPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(fosterPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(candidatePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(59, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(rescuerPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(candidatePanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(ownerPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(fosterPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(52, Short.MAX_VALUE))
        );

        selectButton.setBackground(new java.awt.Color(153, 102, 255));
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

    private void candidateRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_candidateRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_candidateRadioBtnActionPerformed

    private void ownerRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ownerRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ownerRadioBtnActionPerformed

    private void fosterRadioBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fosterRadioBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_fosterRadioBtnActionPerformed

    private void selectButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_selectButtonActionPerformed
        String uType; 
        if(rescuerRadioBtn.isSelected()){
            uType = "Rescuer";
        }
        else if(candidateRadioBtn.isSelected()){
            uType = "Candidate";
        }
        else if(ownerRadioBtn.isSelected()){
            uType = "Owner";
        }
        else if(fosterRadioBtn.isSelected()){
            uType = "Foster";
        }
        else{
            uType = "";
        }
        Register regWindow = new Register(uType);
        regWindow.setVisible(true);
        
    }//GEN-LAST:event_selectButtonActionPerformed

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
    private javax.swing.JPanel candidatePanel;
    private javax.swing.JRadioButton candidateRadioBtn;
    private javax.swing.JPanel fosterPanel;
    private javax.swing.JRadioButton fosterRadioBtn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel ownerPanel;
    private javax.swing.JRadioButton ownerRadioBtn;
    private javax.swing.JPanel rescuerPanel;
    private javax.swing.JRadioButton rescuerRadioBtn;
    private javax.swing.JButton selectButton;
    // End of variables declaration//GEN-END:variables
}
