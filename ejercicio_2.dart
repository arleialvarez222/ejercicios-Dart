
//Crear un programa que te permita ingresar una cantidad de años y el programa te definirá en que categoría 
//se considera según la edad:
//• Prenatal va en números negativos desde -0,0 a 0,9.
//• Bebé debe estar entre 0,0 y 1,00.
//• Niño pequeño ente 3-5.
//• Escuela primaria de 5-12.
//• Adolescente 12-18.
//• Adulto Joven 18-21
//El resultado debería ser para un niño que tenga 4 años “La categoría según la edad es NIÑO porque tiene 4 años”.

import 'dart:io';

main(List<String> args) {
  
  stdout.write('Ingresa la edad :  ');
  double edad = double.parse(stdin.readLineSync() ?? '0');

  if(edad >= -0.0 && edad <= 0.9){
    stdout.write('prenatal');
  }else if(edad >= 0.0 && edad <= 1.0){
    stdout.write('eres un bebe');
  }else if(edad > 1.0 && edad < 3){
    stdout.write('eres un bebe de mas de un año');
  }else if(edad >= 3 && edad <=5){
    stdout.write('eres un niño pequeño');
  }else if(edad > 5 && edad <= 12){
    stdout.write('estas en escuela primaria');
  }else if(edad > 12 && edad <= 18){
    stdout.write('eres un adolecente');
  }else if(edad > 18 && edad <= 21){
    stdout.write('eres un adulto joven');
  }else if(edad > 21){
    stdout.write('eres un adulto mayor de 21 años');
  }

}