
//Se necesita crear un programa que permita ingresar los productos de 1 a N de un mercado 
//con su valor y cantidad dónde:
//• Se debe mostrar el total del mercado calculando cantidad y valor, teniendo en cuenta un IVA del 19%
//• Se debe mostrar el total bruto y neto, al igual que el valor del IVA
//• Se debe mostrar el producto más caro y el más barato.
//• Se debe crear una funcionalidad que permita listar todos los productos ordenados de mayor a 
//menor precio que fueron incluidos en el mercado.

import 'dart:io';

main() {

  String producto = '';
  List<dynamic> listaP = [];
  List<double> listaPrecio = [];
  ///List<double> listado = [];
  double suma = 0.0;
  int cantidad = 0;
  double precioUni = 0.0;
  double valorToltalPrducto = 0.0;
  double valorBruto = 0.0;
  double valorNeto = 0.0;
  double totalMercado = 0.0;
  double iva = 0.0;
  String agregar = 'y';

  void imprimir (String texto) => stdout.writeln(texto);

  while(agregar == 'y'){

    imprimir('Nombre del producto  ');
    producto = stdin.readLineSync() ?? '';

    imprimir('Valor unidad  ');
    precioUni = double.parse(stdin.readLineSync() ?? '');

    imprimir('Cantidad producto  ');
    cantidad = int.parse(stdin.readLineSync() ?? '');

    stdout.write('desea ingresar un nuevo procucto? (y/n)  ');
    agregar = stdin.readLineSync() ?? 'n';

    
    valorToltalPrducto = precioUni * cantidad;
    
    listaPrecio.add(valorToltalPrducto );
    listaP.add('Nombre P: $producto, Cantidad: $cantidad, Valor total: $valorToltalPrducto' );
    listaPrecio.sort((a, b) => b.compareTo(a) );
    
  }

  print('Listado de productos');

  for (var i in listaPrecio){
      suma = suma + i;
      totalMercado = suma;
      iva = totalMercado * 0.19;
      valorBruto = totalMercado - iva;
      valorNeto = totalMercado;
    }

  for (var item in listaP) {
    print(item);
  }

  print('valor bruto : $valorBruto');
  print('Iva : $iva');
  print('valor neto : $valorNeto');
  print('Valor mercado : $totalMercado');
  print('Precios de mayor a menor');

  for (double mayorAMenor in listaPrecio) {
    print(mayorAMenor);
    
  }
  print('Producto de mayor valor ${ listaPrecio.first }');
  print('Producto de menor valor ${ listaPrecio.last }');

}
