/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package thinkWell;

import javax.swing.*;
import java.awt.*;

/**
 *
 * @author alessandro
 */
public class APanel extends JPanel {

    private String local = "menu.png";
    private ImageIcon imagem = null;
    

    public APanel() {
        //imagem = new ImageIcon(getClass().getResource(local));
     //   setBackground(Color.white);
    }

    public APanel(String local) {
        imagem = null;
        imagem = new ImageIcon(getClass().getResource(local)); //carrega a figura
        //imagem = new ImageIcon(local); //carrega a figura
    }

    public void setImage(String l){
        local=l;
        imagem = new ImageIcon(local); //carrega a figura
        repaint();
    }

    /**
     *
     * @param g
     */
    @Override
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        try {
            g.drawImage(imagem.getImage(), 0, 0, getSize().width, getSize().height, this);  //desenha a imagem aki
        } catch (NullPointerException e) {
        }
    }
}


