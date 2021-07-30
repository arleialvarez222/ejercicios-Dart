
//Se necesita crear un programa que permita ingresar una lista de estudiantes de 1 a N 
//con su nota final (0,0 a 5,0) al finalizar dicho ingreso el programa debe mostrar en pantalla:
//• Cuántos pasaron teniendo en cuenta que se pasar con una nota mayor a 3.8.
//• Cuantos quedaron para recuperación si la nota esta entre 2.5 a 3.8.
//• Cuantos perdieron si la nota está de 0,0 a 2,5.


import 'dart:io';

main() {
  
  String nombre;
  double nota = 0.0;
  int pasaron = 0;
  int quedaron = 0;
  int perdieron = 0;
  String ingresar = 'y';

  while(ingresar == 'y'){

    stdout.writeln('Nombre del estudiante  ');
    nombre = stdin.readLineSync() ?? '';

    stdout.writeln('nota del estudiante  ');
    nota = double.parse(stdin.readLineSync() ?? '0');

    if(nota >= 0.0 && nota <=2.5){
      perdieron++;
      print('nombre estudiante: $nombre, nota del estudiante $nota');
    }else if(nota > 2.5 && nota < 3.8){
      quedaron++;
      print('nombre estudiante: $nombre, nota del estudiante $nota');
    }else if(nota >= 3.8 && nota <= 5.0){
      pasaron++;
      print('nombre estudiante: $nombre, nota del estudiante $nota');
    }else{
      print('La nota ingresada no es valida');
    }

    stdout.write('desea ingresar otro estudiante? (y/n)  ');
    ingresar = stdin.readLineSync() ?? 'n';
  }

  print('pasaron : $pasaron, en recueprecion : $quedaron, perdieron : $perdieron');

}