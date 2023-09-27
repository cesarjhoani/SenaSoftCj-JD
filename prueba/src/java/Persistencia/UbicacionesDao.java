/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Modelo.Ubicaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author andrea
 */
public class UbicacionesDao {

    static Conexion dao = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;
    
    
    public static List<Ubicaciones> listar(){
        List<Ubicaciones> lista = new ArrayList<>();
        
        try {
            con = dao.conectar();
            String sql = "SELECT * FROM ubicaciones;";
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(); 
            
            while(rs.next()){
                Ubicaciones u = new Ubicaciones();
                u.setNombre(rs.getString(1));
                u.setPosX(rs.getInt(2));
                u.setPosY(rs.getInt(3));
                lista.add(u);
            }
                    } catch (SQLException ex) {
            Logger.getLogger(UbicacionesDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

}
