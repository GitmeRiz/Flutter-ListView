import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'package:flutter_application_1/statefulWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: Text("Home")),
            ListTile(
              title: Text("Stateful Widget"),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const stafulWidget(),
                ),
              );
              },
            )
          ],
        )),
        appBar: AppBar(title: const Text("RizApp")),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.no_transfer)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              TextField(
                decoration: InputDecoration(labelText: ("Password")),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyWidget(
                          parameter: "Riz Param",
                        ),
                      ),
                    );
                  },
                  child: Text("Login"))
            ],
          ),
        ));
  }
}
