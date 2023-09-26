import 'package:flutter/material.dart';

import 'main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final Map<String, WidgetBuilder> routes = {
    'firstScreen': (context) => const FirstPage(),
    'myHomePage': (context) => const MyHomePage(title: 'Home'),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(
                    title: "Home",
                  )),
        );
      },
      child: const Text("Navigate"),
    )));
  }
}
