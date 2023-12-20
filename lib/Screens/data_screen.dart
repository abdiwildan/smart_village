import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_village/bar_graph.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                color: Colors.white,
              ),
              Text("Data Penduduk",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                  color: Theme.of(context).colorScheme.primary,)
            ]));
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<double> eduSummary = [
    150.2,
    123.5,
    200.0,
    89.6,
    74.3,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text("Jumlah Penduduk",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                            SizedBox(height: 15),
                            Text("742 Jiwa")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text("Laki-Laki",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                            SizedBox(height: 15),
                            Text("345 Jiwa")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text("Perempuan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                            SizedBox(height: 15),
                            Text("379 Jiwa")
                          ],
                        ),
                      ),
                    ),
                  ])),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pendidikan',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 200,
                  child: EducationBarGraph(
                    eduSummary: eduSummary,
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: 
                    Text(
                      'Pekerjaan',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
              ),
              SizedBox(
                height: 200,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 90,
                        color: Theme.of(context).colorScheme.primary,
                        title: 'PNS',
                        showTitle: true,
                        radius: 90,
                      ),
                      PieChartSectionData(
                        value: 123,
                        color: Colors.green,
                        title: 'Wirausaha',
                        showTitle: true,
                        radius: 90,
                      ),
                      PieChartSectionData(
                        value: 176,
                        color: Colors.lightGreen,
                        title: 'Petani',
                        showTitle: true,
                        radius: 90,
                      ),
                      PieChartSectionData(
                        value: 40,
                        color: Colors.greenAccent,
                        title: 'dan Lainnya',
                        showTitle: true,
                        radius: 90,
                      ),
                    ]
                  )
                ),
              )
            ]));
  }
}
