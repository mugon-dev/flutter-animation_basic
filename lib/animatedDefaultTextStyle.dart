import 'package:flutter/material.dart';

class animatedDefaultTextStyle extends StatefulWidget {
  const animatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  _animatedDefaultTextStyleState createState() =>
      _animatedDefaultTextStyleState();
}

class _animatedDefaultTextStyleState extends State<animatedDefaultTextStyle> {
  Color mColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 3),
              style: TextStyle(color: mColor),
              child: Text("안녕"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  mColor = Colors.black;
                });
              },
              child: Text("버튼"),
            ),
          ],
        ),
      ),
    );
  }
}
