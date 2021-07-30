
//Crear un programa que te permita ingresar una cantidad de años y el programa te diga si es menor o mayor de edad, 
//teniendo en cuenta que se considera que si es mayor a 18 años es un mayor de edad.
//El resultado debería ser para una edad de 15 años “Usted es menor de edad porque tiene 15 años”.


import 'dart:io';

main(List<String> args) {
  
  stdout.write('Ingresa la cantidad de años :  ');
  int edad = int.parse(stdin.readLineSync() ?? '0');

  if(edad == 15 ){
    stdout.write('Tienes 15 años, eres menor de edad');
  }else if(edad < 18){
    stdout.write('usted es menor de edad');
  }else if(edad >= 18){
    stdout.write('mayor de edad');
    
  }  

}