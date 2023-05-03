import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("RizApp"),
          leading: IconButton(
            icon: const Icon(Icons.masks_rounded),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_call))
          ],
        ),
        body: GestureDetector(
          onTap: () {
            print("Ontap");
          },
          child: Center(
            child: Container(
              width: 48,
              height: 46,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
