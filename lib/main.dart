import 'package:flutter/material.dart';
import 'myForm.dart';

void main() {
  const name = "Dilupa";
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("My Flutter App"),
      centerTitle: true,
      backgroundColor: Colors.grey,
    ),
    body: const MyLogin(),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text(
        "Press",
      ),
      backgroundColor: Colors.grey,
    ),
  )));
}

//stateless widget - Container
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[400],
      child: const Text("Hello World"),
    );
  }
}

//stateless widget - Row
class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text("Name: "),
        const Text("John"),
        ElevatedButton(onPressed: () {}, child: const Text("Ok"))
      ],
    );
  }
}

//stateFull widget - Column
class MyColumn extends StatefulWidget {
  const MyColumn({super.key});

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  int buttonCLicks = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Name: "),
            const Text("John"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonCLicks += 1;
                  });
                },
                child: const Text("Press"))
          ],
        ),
        Text("Pressed $buttonCLicks times.")
      ],
    );
  }
}
