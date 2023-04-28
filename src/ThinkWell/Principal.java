/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package thinkWell;

import java.awt.event.*;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import thinkWell.Perguntas;
import thinkWell.PerguntasDAO;

/*@Author: Talles Lima*/

public class Principal extends javax.swing.JFrame {

    /**
     * Creates new form Principal
     */
    JButton botoes[][] = new JButton[5][5];
    List<Integer> pontos = new ArrayList();
    int x = 40, y = 25, largura = 70, altura = 65;
    int vez = 0;
    boolean hab = true;
    
    public Principal(List<String> nomes) {
        initComponents();
        this.setLocationRelativeTo(null);
        
        btnSair.setContentAreaFilled(false);
        
        aPanel1.setImage("/img/Bg.png");
        
        lblJog01.setText(nomes.get(0));
        lblJog02.setText(nomes.get(1));
        
         
        
        int cont = 0;
        List aux = new ArrayList();

        aux.add("X");
        aux.add("1");
        aux.add("1");
        aux.add("1");
        aux.add("2");
        aux.add("2");
        aux.add("2");
        aux.add("3");
        aux.add("3");
        aux.add("3");
        aux.add("4");
        aux.add("4");
        aux.add("5");
        aux.add("5");
        aux.add("6");
        aux.add("6");
        aux.add("7");
        aux.add("8");
        aux.add("9");
        aux.add("10");
        aux.add("11");
        aux.add("12");
        aux.add("13");
        aux.add("14");
        aux.add("15");

        Collections.shuffle(aux);

        for (int i = 0; i < 5; i++) {
            if (i > 0) {
                x = 40;
                y = y + 87;
            }
            for (int j = 0; j < 5; j++) {
                int xx = i;
                int yy = j;
                botoes[i][j] = new JButton((String) aux.get(cont));
                botoes[i][j].setEnabled(false);
                cont++;
                botoes[i][j].setBounds(x, y, largura, altura);
                x = x + 105;
                aPanel1.add(botoes[i][j]);
                botoes[i][j].setContentAreaFilled(false);
                
                switch(botoes[i][j].getText()){
                    case "1":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn1.png"));
                        break;
                    case "2":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn2.png"));
                        break;
                    case "3":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn3.png"));
                        break;
                    case "4":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn4.png"));
                        break;
                    case "5":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn5.png"));
                        break;
                    case "6":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn6.png"));
                        break;
                    case "7":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn7.png"));
                        break;
                    case "8":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn8.png"));
                        break;
                    case "9":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn9.png"));
                        break;
                    case "10":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn10.png"));
                        break;
                    case "11":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn11.png"));
                        break;
                    case "12":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn12.png"));
                        break;
                    case "13":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn13.png"));
                        break;
                    case "14":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn14.png"));
                        break;
                    case "15":
                        botoes[i][j].setIcon(new ImageIcon("/img/btn15.png"));
                        break;
                    case "X":
                        botoes[i][j].setIcon(new ImageIcon("/img/btnX.png"));
                        break;
                    default:
                        break;
                }

                JButton b = botoes[i][j];
                botoes[i][j].addActionListener(new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent e) {
                        Perguntas per = new Perguntas(null,true);
                        per.setVisible(true);
                        int valor = Integer.parseInt(b.getText());
                        b.setText("X");
                        LinhaColuna(xx, yy);
                        Desabilita_X(botoes);
                        pontos.add(valor);
                        Pontuar(per, pontos, vez);
                        vez++;
                        
                        for (int k = 0; k < 5; k++) {
                            for (int l = 0; l < 5; l++) {
                                if (!botoes[k][l].isEnabled()) {
                                    hab = false;
                                }
                                else{
                                    hab = true;
                                    k = 5;
                                    l = 5;
                                }
                            }
                        }
                        
                        if (hab == false) {
                            int total01 = Integer.parseInt(txtPont01.getText());
                            int total02 = Integer.parseInt(txtPont02.getText());
                            
                            if (total01 > total02) {
                                JOptionPane.showMessageDialog(null,"O JOGO ACABOU, O VENÇEDOR FOI O JOGADOR 1");
                            }else if (total01 < total02) {
                                JOptionPane.showMessageDialog(null,"O JOGO ACABOU, O VENÇEDOR FOI O JOGADOR 2");
                            }else{
                                JOptionPane.showMessageDialog(null,"O JOGO ACABOU, E OS JOGADORES EMPATARAM");
                            }
                            
                            try {
                                PerguntasDAO pr = new PerguntasDAO();
                                pr.resetarTabela();
                            } catch (SQLException ex) {
                                JOptionPane.showMessageDialog(rootPane, ex.getMessage());
                            }
                            
                            if(JOptionPane.showConfirmDialog(rootPane, "Voce deseja jogar novamente?", "Fechar", JOptionPane.YES_NO_OPTION) == 1){
                                System.exit(0);
                            }else{
                                txtPont01.setText("0");
                                txtPont02.setText("0");
                                
                                int con = 0;
                                Collections.shuffle(aux);
                                for (int k = 0; k < 5; k++) {
                                    for (int l = 0; l < 5; l++) {
                                        botoes[k][l].setText((String) aux.get(con));
                                        con++;
                                    }
                                }
                                
                                for (int a = 0; a < 5; a++) {
                                    for (int b = 0; b < 5; b++) {
                                        if ("X".equals(botoes[a][b].getText())) {
                                            LinhaColuna(a, b);
                                            Desabilita_X(botoes);
                                        }
                                    }
                                }
                                
                                pontos.clear();
                                vez = 0;
                            }
                        }else{
                            hab = false;
                        }
                    }
                });
            }
        }

        for (int l = 0; l < 5; l++) {
            for (int c = 0; c < 5; c++) {
                if ("X".equals(botoes[l][c].getText())) {
                    LinhaColuna(l, c);
                    Desabilita_X(botoes);
                }
            }
        }
        
    }
    
    //---------------EVENTOS---------------
    private void Desabilita_X(JButton[][] botao) {
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if ("X".equals(botao[i][j].getText())) {
                    botao[i][j].setEnabled(false);
                }
            }
        }
    }

    private void LinhaColuna(int l, int c) {
        for (int a = 0; a < 5; a++) {
            for (int b = 0; b < 5; b++) {
                botoes[a][b].setEnabled(false);
            }
        }
        botoes[0][c].setEnabled(true);
        botoes[1][c].setEnabled(true);
        botoes[2][c].setEnabled(true);
        botoes[3][c].setEnabled(true);
        botoes[4][c].setEnabled(true);

        botoes[l][0].setEnabled(true);
        botoes[l][1].setEnabled(true);
        botoes[l][2].setEnabled(true);
        botoes[l][3].setEnabled(true);
        botoes[l][4].setEnabled(true);
    }
    
    private void Pontuar(Perguntas p, List pontos, int cont){
        int pont01 = 0;
        int pont02 = 0;
        int soma = 0;
        boolean resp = p.errouAcertou();
        int pont = (int) pontos.get(cont);

        if (resp == false) {
            pont = pont * (-1);
        }

        if (cont % 2 == 0) {
            soma = Integer.parseInt(txtPont01.getText()) + (pont);
            pont01 = soma;
            txtPont01.setText(Integer.toString(pont01));
        }else{
            soma = Integer.parseInt(txtPont02.getText()) + (pont);
            pont02 = soma;
            txtPont02.setText(Integer.toString(pont02));
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

        aPanel1 = new thinkWell.APanel();
        lblJog01 = new javax.swing.JLabel();
        lblJog02 = new javax.swing.JLabel();
        txtPont01 = new javax.swing.JTextField();
        txtPont02 = new javax.swing.JTextField();
        btnSair = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("ThinkWell");
        setName("FrmJogo"); // NOI18N
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        lblJog01.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        lblJog01.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblJog01.setText("Jogador 1");

        lblJog02.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        lblJog02.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblJog02.setText("Jogador 2");

        txtPont01.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtPont01.setText("0");
        txtPont01.setAutoscrolls(false);
        txtPont01.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black), javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black)));
        txtPont01.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtPont01.setEnabled(false);

        txtPont02.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtPont02.setText("0");
        txtPont02.setAutoscrolls(false);
        txtPont02.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black), javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black)));
        txtPont02.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtPont02.setEnabled(false);

        btnSair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSairActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout aPanel1Layout = new javax.swing.GroupLayout(aPanel1);
        aPanel1.setLayout(aPanel1Layout);
        aPanel1Layout.setHorizontalGroup(
            aPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(aPanel1Layout.createSequentialGroup()
                .addGroup(aPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(aPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(aPanel1Layout.createSequentialGroup()
                            .addGap(610, 610, 610)
                            .addGroup(aPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(txtPont01, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblJog01, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(txtPont02, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, aPanel1Layout.createSequentialGroup()
                            .addContainerGap()
                            .addComponent(lblJog02, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(aPanel1Layout.createSequentialGroup()
                        .addGap(625, 625, 625)
                        .addComponent(btnSair, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(60, 60, 60))
        );
        aPanel1Layout.setVerticalGroup(
            aPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(aPanel1Layout.createSequentialGroup()
                .addGap(86, 86, 86)
                .addComponent(lblJog01, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(8, 8, 8)
                .addComponent(txtPont01, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(35, 35, 35)
                .addComponent(lblJog02, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(8, 8, 8)
                .addComponent(txtPont02, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(309, 309, 309)
                .addComponent(btnSair, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        getContentPane().add(aPanel1, java.awt.BorderLayout.CENTER);

        setBounds(0, 0, 816, 639);
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        if(JOptionPane.showConfirmDialog(rootPane, "Voce deseja realmente fechar o jogo", "Fechar", JOptionPane.YES_NO_OPTION) == 0){
            try {
                PerguntasDAO pr = new PerguntasDAO();
                pr.resetarTabela();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(rootPane, ex.getMessage());
            }
            System.exit(0);
        }
    }//GEN-LAST:event_formWindowClosing

    private void btnSairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSairActionPerformed
        if(JOptionPane.showConfirmDialog(rootPane, "Voce deseja realmente fechar o jogo", "Fechar", JOptionPane.YES_NO_OPTION) == 0){
            try {
                PerguntasDAO pr = new PerguntasDAO();
                pr.resetarTabela();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(rootPane, ex.getMessage());
            }
            System.exit(0);
        }
    }//GEN-LAST:event_btnSairActionPerformed

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
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new Principal(nome).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private thinkWell.APanel aPanel1;
    private javax.swing.JButton btnSair;
    private javax.swing.JLabel lblJog01;
    private javax.swing.JLabel lblJog02;
    private javax.swing.JTextField txtPont01;
    private javax.swing.JTextField txtPont02;
    // End of variables declaration//GEN-END:variables

   

}
