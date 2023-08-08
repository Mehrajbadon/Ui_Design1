import 'package:flutter/material.dart';

import 'item_model_class.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int myindex = 0;
  final tabs = [
    Second(),
  Third(),
    Fourth()
  ];

  var color1 = Color(904077344);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(leading: Icon(Icons.person,color: Colors.blueGrey,),
          title: Center(child: Text("Moves",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),)),actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications,color: Colors.blueGrey,),
        )],backgroundColor: Colors.white,),
        body: tabs[myindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
