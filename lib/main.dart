// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.green
          ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: (){}, icon: Icon(Icons.file_upload)),
        ],
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
              const Text("Назад", style: TextStyle(color: Colors.green),)
            ],
          )

      ),
      body: Container(
      //pageview и контроллер. change notif
        child:Container(
        child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children:[
              PageView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Icon(Icons.add),
                  Icon(Icons.add),
                  Icon(Icons.add),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.5),
                child: Text("text"),
              )
            ]
        ),
        )

      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
