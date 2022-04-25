import 'package:flutter/material.dart';
import 'package:portfolio/Screens/Widets/dropdown.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          child: Image.asset(
            "assets/home.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 50,
          right: size.width * 0.1,
          child: Center(
            child: Row(
              children: [
                Text(
                  "Mental Training",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.close, size: 40, color: Colors.white)
              ],
            ),
          ),
        )
      ],
    ));
  }
}
