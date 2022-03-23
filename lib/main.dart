import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter App'),
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
  bool changeColor = false;


  Widget newButton(String text, onPressed) {
    return SizedBox(
      width: 200.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: changeColor ? Colors.lightBlue : Colors.redAccent,
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
List colors=[const Color(0xff404996),const Color(0xff5B4B4B),const Color(0xff15BDD8),const Color(0xff2625FE),const Color(0xff70012A)];
  Random random= Random();
  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 200.0,
              height: 200.0,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                      index=random.nextInt(5);
                      changeColor = !changeColor;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: colors[index],
                      onPrimary: Colors.blue,
                      shadowColor: Colors.black,
                      padding: const EdgeInsets.all(150),
                  ),
                  child: Text(
                    "$_counter",
                    style: const TextStyle(fontSize: 50.0,color: Colors.white,),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    _counter=0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: colors[index],
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
