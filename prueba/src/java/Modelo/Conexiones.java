/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author andrea
 */
public class Conexiones {
    private int id; 
    private String ubicacion1;
    private String ubicacion2;
    private int peso;

    public Conexiones() {
    }

    public Conexiones(int id, String ubicacion1, String ubicacion2, int peso) {
        this.id = id;
        this.ubicacion1 = ubicacion1;
        this.ubicacion2 = ubicacion2;
        this.peso = peso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    

    public String getUbicacion1() {
        return ubicacion1;
    }

    public void setUbicacion1(String ubicacion1) {
        this.ubicacion1 = ubicacion1;
    }

    public String getUbicacion2() {
        return ubicacion2;
    }

    public void setUbicacion2(String ubicacion2) {
        this.ubicacion2 = ubicacion2;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    
}
