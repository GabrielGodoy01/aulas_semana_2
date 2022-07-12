import 'package:flutter/material.dart';

class CoffeeShopWidget extends StatelessWidget {
  const CoffeeShopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.coffee,
                size: 48,
              ),
            ),
            Text(
              'Cappuccino',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        const Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
