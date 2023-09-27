/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Modelo.Conexiones;
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
public class ConexionesDao {
    static Conexion dao = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;
    
    public static List<Conexiones> listar(){
        List<Conexiones> lista=new ArrayList<>();
        try {
            con = dao.conectar();
            String sql = "SELECT * FROM conexiones;";
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Conexiones C = new Conexiones();
                C.setId(rs.getInt(1));
                C.setUbicacion1(rs.getString(2));
                C.setUbicacion2(rs.getString(3));
                C.setPeso(rs.getInt(4));
                lista.add(C);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConexionesDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
}
