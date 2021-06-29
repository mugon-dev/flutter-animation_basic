import 'package:flutter/material.dart';

class scaleTransition extends StatefulWidget {
  const scaleTransition({Key? key}) : super(key: key);

  @override
  _scaleTransitionState createState() => _scaleTransitionState();
}

// vsync에 this를 넣기위해 tickerprovider를 mixin해줘야함
class _scaleTransitionState extends State<scaleTransition>
    with SingleTickerProviderStateMixin {
  // ScaleTransition의 controller
  late AnimationController _animationController;

  @override
  void initState() {
    // 컨트롤러 초기화
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    // animation 형태
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // tween begin부터 end까지
    // animate 동안
    Animation<double> _animation =
        Tween(begin: 0.0, end: 1.0).animate(_animationController);

    return Scaffold(
      body: Center(
        child: ScaleTransition(
          // animation 구현할땐 Animation 객체가 필요
          scale: _animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
