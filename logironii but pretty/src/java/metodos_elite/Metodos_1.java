/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos_elite;

import clases.ConexionBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Alumno
 */
public class Metodos_1 {

    ConexionBD ame = new ConexionBD();

    public static boolean nietzscheUsuario(String usu) {
        boolean respuesta=false;
        
        System.out.println("*****************COMO SABES QUE ESTO ES REAL?**************************");
        Connection conn = ConexionBD.conectarBaseDatos();
        Statement st = null;
        ResultSet rs = null;
        try {
            String command = "";
            command = "SELECT USU_NOMUSUARIO FROM data_baseronii.usuario"
                    + " where USU_NOMUSUARIO='"+usu+"';";
            st = conn.createStatement();
            rs= st.executeQuery(command);
            
            if (rs.next()) {
                respuesta=true;
            }

        } catch (SQLException exc) {
            System.out.println(">>>>>>>>>SQLException: " + exc.getMessage());
            System.out.println(">>>>>>>>>SQLState: " + exc.getSQLState());
            System.out.println(">>>>>>>>>VendorError: " + exc.getErrorCode());
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
                } // ignore
                rs = null;
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException sqlEx) {
                } // ignore
                st = null;
            }
        }


        return respuesta;
    }
    
    public static boolean doUKnowDaPass(String usu,String pass){
        boolean knows=false;
        
        System.out.println("*****************SANTO Y SEÑA**************************");
        Connection conn = ConexionBD.conectarBaseDatos();
        Statement st = null;
        ResultSet rs = null;
        try {
            String command = "";
            command = "SELECT USU_NOMUSUARIO FROM data_baseronii.usuario"
                    + " where USU_NOMUSUARIO='"+usu+"'"
                    + " and USU_PASSWORD='"+pass+"';";
            System.out.println(command);
            st = conn.createStatement();
            rs= st.executeQuery(command);
            
            if (rs.next()) {
                knows=true;
            }

        } catch (SQLException exc) {
            System.out.println(">>>>>>>>>SQLException: " + exc.getMessage());
            System.out.println(">>>>>>>>>SQLState: " + exc.getSQLState());
            System.out.println(">>>>>>>>>VendorError: " + exc.getErrorCode());
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
                } // ignore
                rs = null;
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException sqlEx) {
                } // ignore
                st = null;
            }
        }
        
        return knows;
    }
}
