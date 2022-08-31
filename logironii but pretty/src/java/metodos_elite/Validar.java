/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos_elite;

/**
 *
 * @author Alumno
 */
public class Validar {
    public static boolean notHeadEmpty(String text){
        boolean respuesta=true;
        if(text==null
                ||text==""){
            respuesta=false;
        }
        return respuesta;
    }
}
