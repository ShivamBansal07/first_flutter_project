import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Count',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'ListView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int item_count = 19;

  void changecount() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      item_count = randomNumber;
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: SafeArea(
        child: ListView.builder(
          itemCount: item_count,
          itemBuilder: ((context, index) {
            return Card(
                child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.numbers_sharp),
                    ),
                    title: Text((index + 1).toString())));
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changecount,
        tooltip: 'Change the Range',
        child: const Icon(Icons.adb_sharp),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
