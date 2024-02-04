/*PAYROLL MANAGEMENT SYSTEM LOGIN*/
package PayRoll;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.util.Calendar;
import java.util.GregorianCalendar;
/*
 *@author Vedant
 *@author Atharva
 *@author Siddhant
 */
public class LogIn extends javax.swing.JFrame {
    Connection con= null;
    PreparedStatement insert = null;
    ResultSet rs=null;   
   
    public LogIn() {
        initComponents();
        Toolkit toolkit = getToolkit();
        Dimension size = toolkit.getScreenSize();
        setLocation(size.width/2 - getWidth()/2,size.height/2 - getHeight()/2); 
        con = con_class.java_con();
        currentDateTime();
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel5 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txt_ID = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        showpass = new javax.swing.JToggleButton();
        txt_pass = new javax.swing.JPasswordField();
        jLabel1 = new javax.swing.JLabel();
        txt_div = new javax.swing.JComboBox<>();
        SignIn = new javax.swing.JButton();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        needHelp = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        Background_down = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        lbl_date = new javax.swing.JMenu();
        lbl_time = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel5.setBackground(new java.awt.Color(255, 255, 255));
        jLabel5.setFont(new java.awt.Font("Bahnschrift", 1, 30)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 51, 51));
        jLabel5.setText("Account Sign In");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 20, 250, 50));

        jLabel7.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 51, 51));
        jLabel7.setText("User ID");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 120, 70, 20));

        txt_ID.setBackground(javax.swing.UIManager.getDefaults().getColor("TextField.disabledBackground"));
        txt_ID.setSelectionColor(new java.awt.Color(0, 153, 153));
        getContentPane().add(txt_ID, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 110, 290, 30));

        jLabel6.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 51, 51));
        jLabel6.setText("Password");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 180, 90, 20));

        showpass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/Visible.png"))); // NOI18N
        showpass.setBorderPainted(false);
        showpass.setContentAreaFilled(false);
        showpass.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                showpassItemStateChanged(evt);
            }
        });
        showpass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                showpassActionPerformed(evt);
            }
        });
        getContentPane().add(showpass, new org.netbeans.lib.awtextra.AbsoluteConstraints(480, 170, 40, 30));

        txt_pass.setBackground(javax.swing.UIManager.getDefaults().getColor("PasswordField.disabledBackground"));
        txt_pass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_passActionPerformed(evt);
            }
        });
        getContentPane().add(txt_pass, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 170, 290, 30));

        jLabel1.setFont(new java.awt.Font("Bahnschrift", 0, 16)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 51, 51));
        jLabel1.setText("Select Login type");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 240, -1, -1));

        txt_div.setBackground(javax.swing.UIManager.getDefaults().getColor("ComboBox.disabledBackground"));
        txt_div.setFont(new java.awt.Font("Bahnschrift", 0, 15)); // NOI18N
        txt_div.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Admin", "Employee" }));
        getContentPane().add(txt_div, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 240, 190, -1));

        SignIn.setBackground(new java.awt.Color(0, 153, 153));
        SignIn.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        SignIn.setForeground(new java.awt.Color(255, 255, 255));
        SignIn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/login.png"))); // NOI18N
        SignIn.setText("Sign In");
        SignIn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 0, true));
        SignIn.setBorderPainted(false);
        SignIn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SignInActionPerformed(evt);
            }
        });
        getContentPane().add(SignIn, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 300, 290, 40));

        jLabel15.setFont(new java.awt.Font("Calibri", 0, 11)); // NOI18N
        jLabel15.setText("Copyright ");
        getContentPane().add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 400, 50, -1));

        jLabel16.setFont(new java.awt.Font("Calibri", 0, 11)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(255, 51, 51));
        jLabel16.setText("Terms of Use");
        getContentPane().add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 400, -1, -1));

        jLabel9.setFont(new java.awt.Font("Calibri", 0, 11)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(255, 51, 51));
        jLabel9.setText("Privacy Policy");
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 400, 70, -1));

        jLabel10.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel10.setText("|");
        getContentPane().add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 390, 10, 30));

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel8.setText("|");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 390, 10, 30));

        jLabel2.setFont(new java.awt.Font("Bahnschrift", 1, 20)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 51, 51));
        jLabel2.setText("Employee Payroll");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 390, -1, -1));

        jLabel3.setFont(new java.awt.Font("Bahnschrift", 1, 20)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 51, 51));
        jLabel3.setText("System");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(640, 450, -1, -1));

        jLabel4.setFont(new java.awt.Font("Bahnschrift", 1, 20)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 51, 51));
        jLabel4.setText("Management");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 420, -1, -1));

        needHelp.setFont(new java.awt.Font("Bahnschrift", 0, 14)); // NOI18N
        needHelp.setForeground(new java.awt.Color(255, 51, 51));
        needHelp.setText("Need Help?");
        needHelp.setContentAreaFilled(false);
        needHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                needHelpActionPerformed(evt);
            }
        });
        getContentPane().add(needHelp, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 360, -1, -1));
        getContentPane().add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, 690, 10));

        Background_down.setBackground(new java.awt.Color(255, 255, 255));
        Background_down.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/Login_Background.jpg"))); // NOI18N
        getContentPane().add(Background_down, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1366, 768));

        lbl_date.setText("Date");
        jMenuBar1.add(lbl_date);

        lbl_time.setText("Time");
        jMenuBar1.add(lbl_time);

        setJMenuBar(jMenuBar1);

        setSize(new java.awt.Dimension(737, 541));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    public void currentDateTime(){
        Calendar cal = new GregorianCalendar();
        int month = cal.get(Calendar.MONTH);
        int year = cal.get(Calendar.YEAR);
        int day = cal.get(Calendar.DAY_OF_MONTH);
        lbl_date.setText(day+"/"+(month+1)+"/"+year);
        int minute = cal.get(Calendar.MINUTE);
        int hour = cal.get(Calendar.HOUR);
        lbl_time.setText(hour+":"+minute);        
    }
    
    public void success() throws SQLException {
        
        String user= txt_ID.getText();
        insert = con.prepareStatement("insert into Audit(UserID) values(?)");
        insert.setString(1, user);
        insert.executeUpdate();
        JOptionPane.showMessageDialog(this, "Successfully loged in");       
        
    }
    
    public void  invalid(){
        JOptionPane.showMessageDialog(this, "Invalid Credentials");
        txt_ID.setText("");
        txt_pass.setText("");
        txt_ID.requestFocus();
    }
    
    private void SignInActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SignInActionPerformed
        String sql = "select UserID, Password, Division from login where (UserID = ? and Password= ? and Division = ?)";
        try{
            int count=0;
            insert = con.prepareStatement(sql);
            insert.setString(1, txt_ID.getText());
            insert.setString(2, txt_pass.getText());
            insert.setString(3, txt_div.getSelectedItem().toString());
            
            rs = insert.executeQuery();
            while(rs.next()){
                String id=txt_ID.getText();
                Emp.empID=id;
                count++;
            }     
            String access = (txt_div.getSelectedItem().toString());           
            if(access.equals("Admin")){
                if(count == 1){
                    success();
                    MenuAdmin ma = new MenuAdmin();
                    ma.setVisible(true);
                    this.dispose();
                }
                else
                    invalid();
            }        
            if(access.equals("Employee")){
                if(count == 1){
                    success();
                    MenuEmp me = new MenuEmp();
                    me.setVisible(true);
                    this.dispose();
                }
                else
                    invalid();
            } 
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }
        finally{
            try{
                rs.close();
                insert.close();
            }
            catch(SQLException e){
                JOptionPane.showMessageDialog(null, e);
            }
        } 
    }//GEN-LAST:event_SignInActionPerformed

    private void txt_passActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_passActionPerformed
       
    }//GEN-LAST:event_txt_passActionPerformed

    private void needHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_needHelpActionPerformed
        // TODO add your handling code here:
        JOptionPane.showMessageDialog(this,"Please contact the system administrator incase of any trouble in login!");
    }//GEN-LAST:event_needHelpActionPerformed

    private void showpassItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_showpassItemStateChanged
        // TODO add your handling code here:
        if(showpass.isSelected()){
            txt_pass.setEchoChar((char)0);
        }
        else{
            txt_pass.setEchoChar('*');
        }
    }//GEN-LAST:event_showpassItemStateChanged

    private void showpassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_showpassActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_showpassActionPerformed

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
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LogIn.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> {
            new LogIn().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Background_down;
    private javax.swing.JButton SignIn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JMenu lbl_date;
    private javax.swing.JMenu lbl_time;
    private javax.swing.JButton needHelp;
    private javax.swing.JToggleButton showpass;
    private javax.swing.JTextField txt_ID;
    private javax.swing.JComboBox<String> txt_div;
    private javax.swing.JPasswordField txt_pass;
    // End of variables declaration//GEN-END:variables
}
