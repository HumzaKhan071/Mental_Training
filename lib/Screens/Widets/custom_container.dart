import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String text;
  const CustomContainer({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = formatDate(DateTime.now(), [HH, ':', nn, ':', ss]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text(text),
            SizedBox(
              width: 30,
            ),
            Row(children: [
              Icon(
                Icons.timer,
                color: Colors.white.withOpacity(0.7),
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(s),
            ])
          ],
        ),
      ],
    );
  }
}
