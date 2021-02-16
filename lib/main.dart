import 'package:flutter/material.dart';
import 'package:testatron/Keypad.dart';

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



class MiddleContent extends StatefulWidget {
  @override
  _MiddleContentState createState() => _MiddleContentState();
}

class _MiddleContentState extends State<MiddleContent> {
  var typedText = "";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(typedText),
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
