import 'package:aulas_flutter/widgets/coffee_shop_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        elevation: 0,
        actions: const [
          Icon(Icons.search, color: Colors.black),
        ],
        leading: const Icon(Icons.menu, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Hoje é um ótimo dia para tomar um café!',
                style: TextStyle(fontSize: 30),
              ),
            ),
            CoffeeShopWidget(),
          ],
        ),
      ),
    );
  }
}
