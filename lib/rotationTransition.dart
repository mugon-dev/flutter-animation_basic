import 'package:flutter/material.dart';

class rotationTransition extends StatefulWidget {
  const rotationTransition({Key? key}) : super(key: key);

  @override
  _rotationTransitionState createState() => _rotationTransitionState();
}

class _rotationTransitionState extends State<rotationTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns:
              CurvedAnimation(parent: _animationController, curve: Curves.ease),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
