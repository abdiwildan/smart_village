import 'package:smart_village/education_bar.dart';

class BarData {
  final double sd;
  final double smp;
  final double sma;
  final double s1;
  final double s2;

  BarData({
    required this.sd,
    required this.smp,
    required this.sma,
    required this.s1,
    required this.s2,
  });

  List<EducationBar> barData = [];

  // initialize bar data
  void initializeBarData() {
    barData = [
      EducationBar(x: 0,  y: sd),
      EducationBar(x: 1, y: smp),
      EducationBar(x: 2, y: sma),
      EducationBar(x: 3, y: s1),
      EducationBar(x: 4, y: s2)

    ];
  }
}
