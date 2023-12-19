import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/newest_widget.dart';
class NewestScreen extends StatefulWidget {
  const NewestScreen({super.key});

  @override
  State<NewestScreen> createState() => _NewestScreenState();
}

class _NewestScreenState extends State<NewestScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          NewestWidget(),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        color: Theme.of(context).colorScheme.primary
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
          Text("News", style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_box_rounded))
        ]
      )
    );
  }
}
