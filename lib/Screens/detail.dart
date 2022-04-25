import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Screens/Widets/barchart.dart';
import 'package:portfolio/Screens/Widets/bottom_navbar.dart';
import 'package:portfolio/Screens/Widets/customAppbar.dart';
import 'package:portfolio/Screens/Widets/custom_training.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              CustomAppbar(),
              CustomTraining(
                sessions: "13",
                name: "Practices",
                color: Colors.purple,
              ),
              SizedBox(height: 10),
              CustomTraining(
                sessions: "6",
                color: Colors.orange,
                name: "Meditations",
              ),
              SizedBox(height: 10),
              BarChartSample2(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomanNav(),
    );
  }
}
