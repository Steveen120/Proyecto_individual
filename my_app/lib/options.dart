import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Opción 1: Contenido',
      style: TextStyle(fontSize: 24),
    ),
    Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Tratara de un sistema de inventario, que permite a los usuarios administrar de manera eficiente todos los aspectos relacionados con el inventario, Módulos proveedores, productos, categorías cada una contará con su respectivos campos de poder agregar, eliminar, editar y crear, un crud funcional para cada módulo a la vez el presente proyecto se plantea como meta crear un aplicativo de inventario web el cual permitirá al administrador crear, editar, y eliminar producto.'
        'Tambien contara con un apartado de login y registro para que el usuario pueda acceder al sitio y un apartado para los proveedores.'
        'En resumen, el sistema de inventario propuesto proporciona una solución integral y efectiva para la gestión de inventarios, ofreciendo un mayor control, eficiencia y rentabilidad para la empresa. Su implementación permitirá optimizar los procesos internos y mejorar la toma de decisiones relacionadas con el inventario, contribuyendo al crecimiento y éxito de la organización.',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    ),
    Text(
      'Opción 3: Contenido',
      style: TextStyle(fontSize: 24),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Opción 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Descripción del Proyecto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Opción 3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
