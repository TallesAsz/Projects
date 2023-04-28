/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package thinkWell;

import java.sql.*;


/*@Author: Talles Lima*/


public class Conexao {
    String banco = "thinkwell";
    String usuario = "root";
    String senha = "1234";
    String servidor = "localhost";
    Connection conexao;
    
    public Conexao() throws SQLException{
        //String url = "jdbc:mysql://" + servidor + ":3306/" + banco;
        String url = "jdbc:mysql://localhost:3306/" + banco;
        try{
            conexao = DriverManager.getConnection(url, usuario, senha);
            //System.out.println("Conectou!!");
        }catch(SQLException e){
            throw new SQLException("Conexão Falhou!!" + e.getMessage());
        }
    }
    public Connection getConexao() {
        return conexao;
    }
}
