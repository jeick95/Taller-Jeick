/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.tienda_camisas;

import java.util.Scanner;

/**
 *
 * @author ASUS
 */
public class Tienda_camisas {

    public static void main(String[] args) {    
        Scanner tc = new Scanner(System.in);
        
        System.out.println("TIENDA DE CAMISAS");
        System.out.println("Evento de descuento por temporada de verano");
        System.out.println(" haz un 7% de descuento");
        System.out.println("    ");
        
        System.out.println("Ingrese precio de la camisa: ");
         double precio = tc.nextDouble();
       
        System.out.println("Ingrese la cantidad de camisas: ");
         int cantidad = tc.nextInt();
         System.out.println("   ");
     
        Descuento_verano d = new Descuento_verano(precio, cantidad);
         
        double importeCompra = d.calcularImporteCompra();
        double primerDescuento = d.calcular1Descuento(importeCompra);
        double segundoDescuento = d.calcular2Descuento(importeCompra, primerDescuento);
        double descuentoTotal = d.calcularDescuentoTotal(primerDescuento, segundoDescuento);
        double importePagar = d.calcularImportePagar(importeCompra, descuentoTotal);
        
        
        System.out.println("Precio de la compra: S/ " + importeCompra);
        System.out.println("Primer descuento (7%): S/ " + primerDescuento);
        System.out.println("Segundo descuento (7%): S/ " + segundoDescuento);
        System.out.println("Descuento total: S/ " + descuentoTotal);
        System.out.println("Toatal a pagar: S/ " + importePagar);
        
        
        
    }
}
