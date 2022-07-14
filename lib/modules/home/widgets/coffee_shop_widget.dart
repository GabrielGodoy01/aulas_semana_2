import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../second/pages/second_page.dart';

class CoffeeShopWidget extends StatelessWidget {
  final String title;
  final String pathImage;
  const CoffeeShopWidget(
      {Key? key, required this.title, required this.pathImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(10)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const SecondPage();
          },
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage(pathImage))),
              ),
              Text(title, style: GoogleFonts.sacramento(fontSize: 30)),
            ],
          ),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
