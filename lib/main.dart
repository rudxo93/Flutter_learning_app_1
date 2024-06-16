import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget을 상하로 배치하기'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max, // min - Column의 크기만큼 차지 / max - 남는 영역 모두 사용
        mainAxisAlignment: MainAxisAlignment.center, // 위젯들이 상/하 기준으로 위치
        crossAxisAlignment: CrossAxisAlignment.center, // 위젯들이 좌/우 기준으로 위치
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Text('Container 1'), // child 는 마지막에 위치하도록 권장..
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
            child: Text('Container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.blue,
            child: Text('Container 3'),
          )
        ],
      ),
    );
  }
}
