import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 3, 147, 243),
            title: const Text('FLUTTER TAB BAR'),
            bottom: TabBar(
              tabs: [
                Row(children: const [
                  Icon(Icons.home),
                  SizedBox(width: 5),
                  Text("Home")
                ]),
                Row(children: const [
                  Icon(Icons.dashboard),
                  SizedBox(width: 5),
                  Text("Dashboard")
                ]),
                Row(children: const [
                  Icon(Icons.question_answer),
                  SizedBox(width: 5),
                  Text("Messages")
                ]),
                Row(children: const [
                  Icon(Icons.history),
                  SizedBox(width: 5),
                  Text("Tasks")
                ]),
                Row(children: const [
                  Icon(Icons.account_circle),
                  SizedBox(width: 5),
                  Text("Profile")
                ]),
              ],
              isScrollable: true,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Icon(Icons.home, size: 100, color: Colors.blue)),
              Center(
                  child: Icon(Icons.dashboard, size: 100, color: Colors.green)),
              Center(
                  child: Icon(Icons.question_answer,
                      size: 100, color: Colors.red)),
              Center(
                  child: Icon(Icons.history, size: 100, color: Colors.orange)),
              Center(
                  child: Icon(Icons.account_circle,
                      size: 100, color: Colors.purple)),
            ],
          ),
        ));
  }
}
