import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget을 좌우로 배치하기'),
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
      height: double.infinity,
      //child: Column  상하 배치
      child: Row( // 좌 우 배치
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
