import 'package:flutter/material.dart';
import 'homepage.dart';
import 'sobrepage.dart';
import 'grade_page.dart';
import 'noticias_page.dart';
import 'contato_page.dart';
import 'documentos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IFRO TADS',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      routes: {
        '/sobre': (context) => const SobrePage(),
        '/grade': (context) => const GradePage(),
        '/noticias': (context) => const NoticiasPage(),
        '/contato': (context) => const ContatoPage(),
        '/documentos': (context) => const DocumentosPage(),
      },
    );
  }
}
