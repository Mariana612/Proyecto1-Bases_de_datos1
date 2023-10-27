/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Views;

import BD.AdoptionFormsFunctions;
import static BD.AdoptionFormsFunctions.getAnswers;
import static BD.AdoptionFormsFunctions.getPersonAnswers;
import BD.NormalUserFunctions;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.LineBorder;

/**
 *
 * @author maria
 */
public class CheckResult extends javax.swing.JFrame {

    public String vUserTupe;
    /**
     * Creates new form CheckSubmission
     */
    public CheckResult( int idPerson, String userType) {
        initComponents(idPerson);
        vUserTupe = userType;

        createSubmissionPanels(idPerson); 
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents(int idPerson) {

        jPanel2 = new javax.swing.JPanel();
        scrollPane1 = new java.awt.ScrollPane();
        jPanel1 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        TitleLabel1 = new javax.swing.JLabel();
        backButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(207, 232, 255));

        jPanel2.setBackground(new java.awt.Color(207, 232, 255));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 599, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 501, Short.MAX_VALUE)
        );

        scrollPane1.add(jPanel1);

        jPanel4.setBackground(new java.awt.Color(0, 102, 153));
        jPanel4.setForeground(new java.awt.Color(0, 102, 153));

        TitleLabel1.setFont(new java.awt.Font("Roboto", 1, 36)); // NOI18N
        TitleLabel1.setForeground(new java.awt.Color(255, 255, 255));
        TitleLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TitleLabel1.setText("Form Results");
        TitleLabel1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        backButton.setBackground(new java.awt.Color(207, 232, 255));
        backButton.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        backButton.setForeground(new java.awt.Color(255, 255, 255));
        backButton.setText("BACK");
        backButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backButtonActionPerformed(evt, idPerson);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(246, 246, 246)
                .addComponent(TitleLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 354, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(backButton)
                .addGap(18, 18, 18))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(29, Short.MAX_VALUE)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TitleLabel1)
                    .addComponent(backButton, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(24, 24, 24))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(113, 113, 113)
                .addComponent(scrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 599, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(128, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(22, 22, 22)
                .addComponent(scrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 501, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void backButtonActionPerformed(java.awt.event.ActionEvent evt, int idPerson) {//GEN-FIRST:event_backButtonActionPerformed
                NormalUserMain normalWindow = new NormalUserMain(idPerson,vUserTupe);
                normalWindow.setVisible(true);
                dispose();
    }//GEN-LAST:event_backButtonActionPerformed
private void createSubmissionPanels(int idPerson) {
    List<List<String>> data = getPersonAnswers(idPerson);
    System.out.println(data);
    

    // Create a parent panel to hold all the submission panels
    JPanel parentPanel = new JPanel();
    parentPanel.setLayout(new GridLayout(0, 1)); // Single column layout

    String[] titles = {
        "Dog Name: ",
        "Breed: ",
        "Status",
       
    };

    int id = 0;

    for (List<String> dataList : data) {
        // Create a new submission panel for each data entry
        id++;
        
        JPanel submissionPanel = new JPanel();
        submissionPanel.setLayout(new GridLayout(5, 2)); // Ten rows with two columns
        submissionPanel.setBackground(Color.WHITE);

        JLabel algo = new JLabel("RESULTADO" + id);
        algo.setPreferredSize(new Dimension(150, 30));
        submissionPanel.add(algo);
        
         JLabel algomas = new JLabel("");
        algomas.setPreferredSize(new Dimension(150, 30));
        submissionPanel.add(algomas);

        for (int i = 0; i < 3; i++) {
            
            JLabel titleLabel = new JLabel(titles[i]);
            JLabel valueLabel = new JLabel(dataList.get(i));

            titleLabel.setPreferredSize(new Dimension(150, 30));
            valueLabel.setPreferredSize(new Dimension(150, 30));

            titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
            titleLabel.setVerticalAlignment(SwingConstants.CENTER);
            valueLabel.setHorizontalAlignment(SwingConstants.CENTER);
            valueLabel.setVerticalAlignment(SwingConstants.CENTER);

            LineBorder lineBorder = new LineBorder(Color.BLACK, 1);
            titleLabel.setBorder(lineBorder);
            valueLabel.setBorder(lineBorder);

            submissionPanel.add(titleLabel);
            submissionPanel.add(valueLabel);
        
        }
        if(dataList.get(2).equals("Accepted")){
        JButton button1 = new JButton("Folow Up");
        button1.setPreferredSize(new Dimension(150, 30));
        submissionPanel.add(button1);
        
        button1.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    FollowUp followUpWindow = new FollowUp( Integer.parseInt(dataList.get(3)),idPerson,vUserTupe);
                    followUpWindow.setVisible(true);
                    dispose();
                }
            });
        
        JLabel xd = new JLabel("");
        xd.setPreferredSize(new Dimension(150, 30));
        submissionPanel.add(xd);
        }


        parentPanel.add(submissionPanel);
    
    }

    // Add the parent panel with all submission panels to jPanel1
    jPanel1.setLayout(new BorderLayout());
    jPanel1.add(parentPanel, BorderLayout.CENTER);
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
//            java.util.logging.Logger.getLogger(CheckResult.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(CheckResult.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(CheckResult.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(CheckResult.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//        //</editor-fold>
//
//        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new CheckResult(0,0).setVisible(true);
//            }
//        });
//    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel TitleLabel1;
    private javax.swing.JButton backButton;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private java.awt.ScrollPane scrollPane1;
    // End of variables declaration//GEN-END:variables
}
