import 'package:flutter/material.dart';

class positionedTransition extends StatefulWidget {
  const positionedTransition({Key? key}) : super(key: key);

  @override
  _positionedTransitionState createState() => _positionedTransitionState();
}

class _positionedTransitionState extends State<positionedTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animationController.repeat();
    super.initState();
    // 컨트롤러 초기화
    ;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    Animation<RelativeRect> _controller = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, height, 0, 0),
            end: RelativeRect.fromLTRB(0, 0, 0, 0))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    return Scaffold(
      body: Stack(
        children: [
          PositionedTransition(
            rect: _controller,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
