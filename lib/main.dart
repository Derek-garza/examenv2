import 'package:flutter/material.dart';

class Producto {
  final int codigo;
  final String nombre;
  final double peso;

  Producto({required this.codigo, required this.nombre, required this.peso});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Lista de productos\nDerek Garza M 1196'), // Agregamos el texto al AppBar
          backgroundColor:
              Color(0xff396f9f), // Cambiamos el color del AppBar a azul
        ),
        body: ListaProductos(),
      ),
    );
  }
}

class ListaProductos extends StatelessWidget {
  final List<Producto> productos = [
    Producto(codigo: 1, nombre: 'guantes reyes rojo', peso: 0.2),
    Producto(codigo: 2, nombre: 'bucal negro', peso: 0.15),
    Producto(codigo: 3, nombre: 'cereta reyes roja', peso: 0.18),
    Producto(codigo: 4, nombre: 'guantes everlast blanco', peso: 0.3),
    Producto(codigo: 5, nombre: 'Pera de boxeo', peso: 0.22),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: productos.map((producto) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Card(
                    color: _getColor(producto.codigo),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Código: ${producto.codigo}'),
                          Text('Nombre: ${producto.nombre}'),
                          Text('Peso: ${producto.peso} kg'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Color _getColor(int codigo) {
    switch (codigo) {
      case 1:
        return Color(0xffc53644)!;
      case 2:
        return Color(0xffdc8500)!;
      case 3:
        return Color(0xffd0bc00)!;
      case 4:
        return Color(0xff02d709)!;
      case 5:
        return Color(0xff2292ec)!;
      default:
        return Colors.grey[100]!;
    }
  }
}
