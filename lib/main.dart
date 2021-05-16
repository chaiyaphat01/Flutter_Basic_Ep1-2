import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity:
                VisualDensity.adaptivePlatformDensity //สีด้านบนของเมนู
            ),
        home: MyHomepage());
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //กำหนด Properties
  int _counter = 0;
  void counterFn() {
    setState(() {
      _counter += 1;
    });
  }

  void devideFn(){
    setState(() {
      _counter -= 1 ;
    });
  }

  void resetFn(){
    setState(() {
      _counter = 0 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Hello Flutter23"),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print("Your press notification");
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Press Enter Button!!",
                style: TextStyle(color: Colors.cyan[300], fontSize: 30.0)),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 100.0),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
          onPressed: devideFn,
          tooltip: 'กดลบจำนวน',
          child: Icon(Icons.exposure_minus_1_outlined),
          ),
          FloatingActionButton(
          onPressed: resetFn,
          tooltip: 'รีเช็คค่า',
          child: Icon(Icons.cached),
          ),
          FloatingActionButton(
          onPressed: counterFn,
          tooltip: 'กดเพิ่มจำนวน',
          child: Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
