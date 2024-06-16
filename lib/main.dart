import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget을 상 하 좌 우로 배치하기'),
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container 4'),
          )
        ],
      ),
    );
  }
}
