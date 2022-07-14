import 'package:aulas_flutter/modules/home/widgets/coffee_shop_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool expanded = true;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> listString = ['Cappuccino', 'Café', 'Leite'];
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      drawer: Drawer(
          child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('data'),
          ),
          Icon(Icons.abc),
          Icon(Icons.abc),
          Icon(Icons.abc),
        ],
      )),
      appBar: AppBar(
          elevation: 0,
          actions: const [
            Icon(Icons.search, color: Colors.black),
          ],
          leading: GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
                expanded ? controller.forward() : controller.reverse();
              });
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: controller,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Hoje é um ótimo dia para tomar um café!',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CoffeeShopWidget(
                    title: listString[index],
                    pathImage: 'assets/images/ronaldinho.jpg',
                  ),
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
