/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tienda_camisas;

/**
 *
 * @author ASUS
 */
public class Descuento_verano {
    private double precioCamisa;
    private int cantidad;

    public Descuento_verano(double precioCamisa, int cantidad) {
        this.precioCamisa = precioCamisa;
        this.cantidad = cantidad;
    }
    
    
    public double calcularImporteCompra() {
        return precioCamisa * cantidad;
    }
    public double calcular1Descuento(double importeCompra) {
        return importeCompra * 0.07;
    }
    public double calcular2Descuento(double importeCompra, double primerDescuento) {
        return (importeCompra - primerDescuento) * 0.07;
    }
    public double calcularDescuentoTotal(double primerDescuento, double segundoDescuento) {
        return primerDescuento + segundoDescuento;
    }
    public double calcularImportePagar(double importeCompra, double descuentoTotal) {
        return importeCompra - descuentoTotal;
    }
    
    
    
    
    
    
    
    
    
}
