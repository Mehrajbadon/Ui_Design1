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
  List<ItemModel> items = [];

  @override
  void initState() {
    super.initState();
    items.add(ItemModel(Icons.person, "Mahtab Ibne Halim", "Kabirhat, Noakhali", "asset/music3.jpg"));
    items.add(ItemModel(Icons.person, "Aftab Ibne Halim", "Kabirhat, Noakhali", "asset/music3.jpg"));
    items.add(ItemModel(Icons.person, "Mehraj Ibne Halim", "Kabirhat, Noakhali", "asset/music3.jpg"));
    items.add(ItemModel(Icons.person, "Mehraj Ibne Halim", "Kabirhat, Noakhali", "asset/music3.jpg"));
  }

  var color = Color(901813139);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(leading: Icon(Icons.person),title: Center(child: Text("Moves")),actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications),
        )],backgroundColor: color,),
        body: Container(

          color: color,
          child: SafeArea(
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                          child: mehraj(
                            items[index].icon,
                            items[index].title,
                            items[index].subtitle,
                            items[index].imageAsset,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mehraj(IconData icon, String title, String subtitle, String imageAsset) {
    return Center(
      child: Container(
        // ... Container properties ...

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  // ... Card properties ...

                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 8),
                          child: ListTile(
                            leading: CircleAvatar(child: Icon(icon)),
                            title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text(subtitle),
                            trailing: Icon(Icons.more_horiz),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            child: Image.asset(imageAsset,height: 150,width: 450,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
