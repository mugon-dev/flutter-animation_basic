import 'package:flutter/material.dart';

class animatedContainer extends StatefulWidget {
  const animatedContainer({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<animatedContainer> {
  late Size size;

  // 컨테이너 애니메이션
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    // error context를 찾지 못함
    // size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          // 아이콘을 버튼화
          InkWell(
            child: Icon(Icons.menu),
            onTap: () {
              setState(() {
                // 클릭할때마다 isOpen의 값이 반대로
                isOpen = !isOpen;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Text("Animation screen"),
          ),
          AnimatedContainer(
            // 속도
            duration: Duration(seconds: 2),
            // animation 형태
            curve: Curves.easeInOut,
            height: double.infinity,
            // 컨테이너의 가로 사이즈
            width: size.width * (2 / 3),
            color: Colors.blue,
            transform: Matrix4.translationValues(
                isOpen ? size.width * (1 / 3) : size.width, 0, 0),
          )
        ],
      ),
    );
  }
}
