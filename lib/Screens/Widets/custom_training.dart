import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class CustomTraining extends StatelessWidget {
  final String name;
  final Color color;
  final String sessions;
  const CustomTraining(
      {Key? key,
      required this.name,
      required this.color,
      required this.sessions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = formatDate(DateTime.now(), [HH, ':', nn, ':', ss]);
    return Container(
      height: 150,
      width: 500,
      decoration: BoxDecoration(
          color: Color(0xFFC0C0C0), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Container(
                      decoration:
                          BoxDecoration(color: color, shape: BoxShape.circle),
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Sessions",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      sessions,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      s,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
