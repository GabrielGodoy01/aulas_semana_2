import 'package:flutter/material.dart';

import '../widgets/icon_button_second_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.green),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.pink),
          ),
        ),
      ]),
    );
  }
}
