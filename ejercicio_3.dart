//Se necesita hacer un programa que nos calcule el IVA de un producto teniendo en cuenta que vamos a manejar 3 países 
//bia – 19%, Argentina 20% y Chile 9 %.
//• Tenga en cuenta que el valor y el país los debe ingresar el usuario y calcular el resultado, 
//en caso de que el país ingresado no coincida se deberá notificar al usuario que el país no existe.
//• Se espera un resultado similar a este ingresando un valor de 1000 “El IVA que se le cobrará en COLOMBIA 
//ese de 190 con base al total suministrado de 1000”.


import 'dart:io';

main(List<String> args) {

  double producto = 1000;
  
  stdout.write('Ingrese el nombre del pais :  ');
  String pais = stdin.readLineSync() ?? '';

  if(pais == 'Colombia'){
    double iva = producto * 0.19;
    stdout.write('pais : $pais  ');
    stdout.write('valor producto : $producto  ');
    stdout.write('iva : $iva');
  }else if(pais == 'Argentina'){
    double iva = producto * 0.20;
    stdout.write('pais : $pais  ');
    stdout.write('valor producto : $producto  ');
    stdout.write('iva : $iva');
  }else if(pais == 'Chile'){
    double iva = producto * 0.09;
    stdout.write('pais : $pais  ');
    stdout.write('valor producto : $producto  ');
    stdout.write('iva : $iva');
  }else if(pais != 'Chile' || pais != 'Colombia' || pais != 'Argentina'){
    stdout.write('El pais no existe');;
  }



}