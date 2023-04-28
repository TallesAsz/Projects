package thinkWell;

import java.sql.*;
import java.util.*;


/*@Author: Talles Lima*/


public class PerguntasDAO{
    private int cod_per;
    Connection conexao;

    public int getCod_per() {
        return cod_per;
    }

    public void setCod_per(int cod_per) {
        this.cod_per = cod_per;
    }
    
    public PerguntasDAO() throws SQLException{
        conexao = new Conexao().getConexao();
    }
    
    public String selecionar() throws SQLException{
        try {
            String sql = "select * from Perguntas where selecionado <> 1 order by rand()";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                String Pergunta = rs.getString("pergunta");
                int idPer = rs.getInt("idpergunta");
                setCod_per(idPer);
                String up = "update perguntas set selecionado = 1 where pergunta = ?";
                PreparedStatement psUp = conexao.prepareStatement(up);
                psUp.setString(1, Pergunta);
                psUp.executeUpdate();
                return Pergunta;
            }else{
                return "";
            }
        }catch (Exception e) {
            throw new SQLException("Erro ao selecionar pergunta " + e.getMessage());
        }
    }
    
    public void resetarTabela() throws SQLException{
        try {
            String sql = "update perguntas set selecionado = 0";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            throw new SQLException("Erro ao resetar tabela perguntas" + e.getMessage());
        }
    }
    
    /*public static void main(String[] args) {
        try {
            PerguntasDAO dao = new PerguntasDAO();
            String Pergunta;
            Pergunta = dao.selecionar(0);
            System.out.println(Pergunta);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }*/
}
