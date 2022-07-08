package thinkWell;

import java.sql.*;
import java.util.*;
import thinkWell.PerguntasDAO;

/**
 *
 * @author Devisate
 */
public class RespostasDAO {
    String respEr;
    Connection conexao;    
    
    public RespostasDAO() throws SQLException{
        conexao = new Conexao().getConexao();
    }
    
    public String RespC (PerguntasDAO pr) throws SQLException{
        String respC = "";
        try {
            int idPer = pr.getCod_per();
            String sql = "select descricao from respostas where idpergunta = ? and correta = 1";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, idPer);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                respC = rs.getString("descricao");
                return respC;
            }else{
                return "";
            }            
        } catch (Exception e) {
            throw new SQLException("Erro ao selecionar a resposta certa " + e.getMessage());
        }
    }
    
    public List<String> RespE (PerguntasDAO pr) throws SQLException{
        List respE = new ArrayList();
        try {
            int idPer = pr.getCod_per();
            String sql = "select descricao from respostas where idpergunta = ? and correta = 0";
            PreparedStatement ps = conexao.prepareCall(sql);
            ps.setInt(1, idPer);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                respEr = rs.getString("descricao");
                respE.add(respEr);
            }
            return respE;
        } catch (Exception e) {
            throw new SQLException("Erro ao selecionar as respostas erradas " + e.getMessage());
        }
    }
    
    /*public static void main(String[] args) {
        try {
            RespostasDAO dao = new RespostasDAO();
            //String RespC;
            //RespC = dao.RespC(1);
            //System.out.println(RespC);
            List RespE = new ArrayList();
            RespE = dao.RespE();
            Collections.shuffle(RespE);
            System.out.println(RespE);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }*/
}
