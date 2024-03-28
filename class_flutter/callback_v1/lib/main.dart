import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParentsView(),
    );
  }
} // end of MyApp


class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
} // end of StatefulWidget

class _ParentsViewState extends State<ParentsView> {

  String childMsgContent = "여기는 부모위젯 영역입니다.";

  // 자식 위젯한테 전달할 함수를 설계한다.
  void onCallbackPressed() {
    print("자식한테 이벤트가 일어났음");
    setState(() {
      childMsgContent = "연락 왔어";
    });
  }

  void onCallbackPressedA(String msg) {
    print("A자식한테 이벤트가 일어났음");
    setState(() {
      childMsgContent = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1, child: Center(child: Text(childMsgContent))),
            Expanded(flex: 1, child: ChildA(onCallback: onCallbackPressedA)),
            Expanded(flex: 1, child: ChildB(callback: onCallbackPressed)),
          ],
        ),
      ),
    );
  }
} // end of _ParentsViewState

class ChildA extends StatelessWidget {
  // 함수 타입
//  final VoidCallback callback;
  // 함수 모양 설계 변경
  final Function(String msg) onCallback;

  const ChildA({required this.onCallback,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          onCallback("자식 A가 연산해서 데이터 전달");}
        ,
        child: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Center(child: Text("CHILD A")),
        ),
      ),
    );
  }
}

class ChildB extends StatelessWidget {

  // 함수 타입
  final VoidCallback callback;

  // 생성자
  const ChildB({required this.callback,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: callback,
        child: Container(
          width: double.infinity,
          color: Colors.red,
          child: Center(child: Text("CHILD B")),
        ),
      ),
    );
  }
}
