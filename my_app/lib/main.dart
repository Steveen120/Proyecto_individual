import 'package:flutter/material.dart';
import 'welcome.dart';
import 'login.dart';
import 'register.dart';
import 'project_description.dart';
import 'options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/project-description': (context) => ProjectDescriptionScreen(),
        '/options': (context) => OptionsScreen(),
      },
    );
  }
}
