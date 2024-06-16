import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Conainer'),
      ),
      body: CustomContainer(),
    ),
  ));
}

///  width: double.infinity - 좌 우 끝까지 채운다.. -> match_parent
///  color: Color(0xFF5E4343) - Color Hex 값 사용 -> 0xFFRGB (FF 투명도, 뒤에 RGB값)
///  EdgeInsets.symmetric(vertical: 12 ,horizontal: 10) - vertical 상, 하 / horizontal 좌, 우
///  BoxDecoration 사용 시 밖에 color가 선언될 경우 Error 발생
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        //color: Color(0xFFA5E088),
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        //margin: EdgeInsets.symmetric(vertical: 12 ,horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xFFA5E088),
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10),
              BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]),
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: Text('Hello Container!!'),
          ),
        ),
      ),
    );
    {}
  }
}
