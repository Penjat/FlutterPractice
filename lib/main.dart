import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundText(),
        Column(
          children: [
            Text("Top text"),
            MiddleContent(),
            Keypad(),
          ],
        ),
      ],
    );
  }
}

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      width: 200.0,
      height: 200.0,
      child: Column(
          children: <Widget>[
            KeypadKey(0),
            Row(
              children: [
                KeypadKey(1),
                KeypadKey(2),
                KeypadKey(3),
              ],
            ),
            Row(
              children: [
                KeypadKey(4),
                KeypadKey(5),
                KeypadKey(6),
              ],
            ),
            Row(
              children: [
                KeypadKey(7),
                KeypadKey(8),
                KeypadKey(9),
              ],
            ),
          ]
      ),
    );
  }

}

class KeypadKey extends StatelessWidget {
  KeypadKey(this.myNumber);
  int myNumber;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Add your onPressed code here!
      },
      label: Text(myNumber.toString()),
      backgroundColor: Colors.pink,
    );
  }
}

class MiddleContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text('Approve'),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}

class BackgroundText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Hi how are you",
        style: new TextStyle(
          fontSize: 10.0,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
