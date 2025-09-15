/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.empresa_v;

/**
 *
 * @author ASUS
 */
public class Feria_Invertir {
    
    private double montoTotal;

    public Feria_Invertir(double montoTotal) {
        this.montoTotal = montoTotal;
    }
    
    public void calcularGasto(){
        double alquiler = montoTotal * 0.23;
        double publicidad = montoTotal * 0.07;
        double transporte = montoTotal * 0.26;
        double servicios = montoTotal * 0.12;
        double decoracion = montoTotal * 0.21;
        double gastosVarios = montoTotal * 0.11;
        
        System.out.println("    ");
        System.out.println("Gasto de la feria: ");
        System.out.println("    ");
        System.out.println("Espacio de Alquiler : "+alquiler);
        System.out.println("Publicidad: S/. "+publicidad);
        System.out.println("Transporte: S/. "+transporte);
        System.out.println("Servicios: S/. "+servicios);
        System.out.println("Decoracion: S/. "+decoracion);
        System.out.println("Varios gastos: S/. "+gastosVarios);
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
