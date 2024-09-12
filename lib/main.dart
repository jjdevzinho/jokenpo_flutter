import 'package:flutter/material.dart';
import 'package:jokenpo/theme.dart';
import 'package:jokenpo/jogo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Desativa o banner de debug
      title: 'Jokenpo Home',
      theme: lightTheme, // Define o tema claro
      darkTheme: darkTheme, // Define o tema escuro
      themeMode: ThemeMode.system, // Usa o tema do sistema
      home: const Jogo(), // Define a tela inicial
    );
  }
}
