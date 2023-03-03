import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        const Text("Welcome"),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Logout"))
      ]),
    );
  }
}
