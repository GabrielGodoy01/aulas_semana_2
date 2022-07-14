import 'package:aulas_flutter/modules/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class PrimeiroApp extends StatelessWidget {
  const PrimeiroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Titulo da Página',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.brown.shade200),
      ),
      home: const HomePage(),
    );
  }
}
