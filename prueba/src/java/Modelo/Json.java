/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.List;

/**
 *
 * @author andrea
 */
public class Json {
    
    private List<Ubicaciones> ubicaciones;
    private List<Conexiones> conexiones;
    private String inicio;

    public Json(List<Ubicaciones> ubicaciones, List<Conexiones> conexiones, String inicio) {
        this.ubicaciones = ubicaciones;
        this.conexiones = conexiones;
        this.inicio = inicio;
    }

    public Json() {
    }

    public List<Ubicaciones> getUbicaciones() {
        return ubicaciones;
    }

    public void setUbicaciones(List<Ubicaciones> ubicaciones) {
        this.ubicaciones = ubicaciones;
    }

    public List<Conexiones> getConexiones() {
        return conexiones;
    }

    public void setConexiones(List<Conexiones> conexiones) {
        this.conexiones = conexiones;
    }

    public String getInicio() {
        return inicio;
    }

    public void setInicio(String inicio) {
        this.inicio = inicio;
    }
    
}
