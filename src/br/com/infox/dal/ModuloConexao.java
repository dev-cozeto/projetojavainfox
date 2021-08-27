/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author Victor Cozeto
 */
public class ModuloConexao {

    //método responsável por estabelecer a conexão com o banco 
    public static Connection conector() {
        Connection conexao = null;
        //A linha abaixo chama o driver
        String driver = "com.mysql.cj.jdbc.Driver";
        //Armazenando informações referente ao banco
        String url = "jdbc:mysql://localhost:3307/dbinfox";
        String user = "root";
        String password = "admin";

        //Estabelecendo a Conexão com o banco 
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
           // System.out.println(e);
            return null;
        }
    }

}
