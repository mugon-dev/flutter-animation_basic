import 'package:flutter/material.dart';

class animatedOpacity extends StatefulWidget {
  const animatedOpacity({Key? key}) : super(key: key);

  @override
  _animatedOpacityState createState() => _animatedOpacityState();
}

class _animatedOpacityState extends State<animatedOpacity> {
  double boxOpacity = 1.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 랜더링 후 3초 후 opacity 변경
    Future.delayed(Duration(seconds: 3), () {
      change();
    });
  }

  void change() {
    setState(() {
      boxOpacity = 0.2;
    });
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
                // 버튼 클릭해서 opacity 변경
                // setState(() {
                //   boxOpacity = 0.2;
                // });
              },
              child: Text("버튼"),
            ),
            AnimatedOpacity(
              opacity: boxOpacity,
              duration: Duration(seconds: 3),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
