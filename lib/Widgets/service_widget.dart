import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 3,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset(
                'assets/goverment.png',
                height: 70,
                width: 70,
                ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 3,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset(
                'assets/service.png',
                height: 70,
                width: 70,
                ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 3,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset(
                'assets/bar.png',
                height: 70,
                width: 70,
                ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 3,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset(
                'assets/news.png',
                height: 70,
                width: 70,
                ),
            ),
          )
        ],),
      ),
    );
  }
}