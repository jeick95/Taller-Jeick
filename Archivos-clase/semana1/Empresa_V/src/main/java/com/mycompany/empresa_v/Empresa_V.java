/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.empresa_v;

import java.util.Scanner;

/**
 *
 * @author ASUS
 */
public class Empresa_V {

    public static void main(String[] args) {
        Scanner ef = new Scanner(System.in);
        
        System.out.println("el monto total de dinero a invertir");
        System.out.println("Ingrese el monto a total a invertir");
        double monto = ef.nextDouble();
        
        Feria_Invertir ei = new Feria_Invertir(monto);
        ei.calcularGasto();
        
        
        
    }
}
