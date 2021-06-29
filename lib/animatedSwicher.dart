import 'package:flutter/material.dart';

class animatedSwicher extends StatefulWidget {
  const animatedSwicher({Key? key}) : super(key: key);

  @override
  _animatedSwicherState createState() => _animatedSwicherState();
}

class _animatedSwicherState extends State<animatedSwicher> {
  // 바뀔 위젯을 변수처리
  // var 타입은 값이 한번 정해지면 고정
  // var mWidget = FirstWidget();
  // dynamic 또는 부모타입인 widget
  Widget mWidget = FirstWidget();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 3),
              child: mWidget,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  mWidget = SecondWidget();
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

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: 100,
      height: 100,
    );
  }
}
