import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 3,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 103, 39, 176),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("lib/assets/images/header.png"))),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "30.01.2024",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "My Flutter Todo",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
