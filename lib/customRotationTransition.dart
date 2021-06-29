import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class customRotationTransition extends StatefulWidget {
  const customRotationTransition({Key? key}) : super(key: key);

  @override
  _customRotationTransitionState createState() =>
      _customRotationTransitionState();
}

class _customRotationTransitionState extends State<customRotationTransition>
    with SingleTickerProviderStateMixin {
  double radian = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 지속적으로 무언가를 실행할땐 timer
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        radian = radian + pi / 9;
      });
      // setState가 재실행되기 때문에 랜더링이 계속 됨
    });
    // Future.delayed(Duration(seconds: 3),()=>{});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  radian = radian + pi / 2;
                });
              },
              child: Text("버튼"),
            ),
            Transform.rotate(
              // angle 만큼 회전
              // 단위 pi -> radian 개념 (반지름의 길이와 같은 원의 둘레)
              // radian이 되는 각도는 57도, 180도일때의 반지름과 3레디안의 차이는 0.14임
              // 원의 둘레는 radian으로 표현 => 원 둘레 = 5.x * radian
              // pi = 3 radian - 0.14
              // 원의 둘레 = pi * 2
              angle: radian,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text("왼쪽모서리"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
