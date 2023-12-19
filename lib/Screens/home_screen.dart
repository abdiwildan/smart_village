import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/newest_widget.dart';
import '../Widgets/service_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [AppBar(), Body()],
            ),
          ),
        ),
        value: SystemUiOverlayStyle.light);
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20,),
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 23, 179, 23), Colors.greenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: 
                  Text(
                    'Selamat Datang, \nDi Desa Sukamakmur\n\nNimati Layanan Desa, \n Dalam Genggaman',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  ),
                  
                  Image.asset(
                    'assets/kades.png',
                    fit: BoxFit.cover,
                    width: 175,
                  )
                  
                ]),
          ],
        )
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pelayanan',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Lihat Semua',
                  style: Theme.of(context).textTheme.bodyMedium
                )
              )
            ],
          ),
        ),
        const ServiceWidget(),

        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Berita',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        const NewestWidget(),
      ],
    );
  }
}