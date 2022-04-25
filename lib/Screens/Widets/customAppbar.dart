import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "assets/heart-svgrepo-com.svg",
                height: 30,
                color: Colors.purple,
              ),
              Icon(
                Icons.settings,
                size: 30,
                color: Color(0xFFC0C0C0),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple,
                  backgroundImage: AssetImage(
                    "assets/man.png",
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
