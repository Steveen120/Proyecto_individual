import 'package:flutter/material.dart';

class ProjectDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripción del Proyecto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Este es un proyecto que tiene como objetivo...',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
