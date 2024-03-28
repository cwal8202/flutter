import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

// view
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  // 핵심 데이터 선정 - 클래스
  // Model에서 데이터와 관련된 로직이 포함 된다.
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('뷰 모델 없는 코드를 작성해보기'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("간단한 뷰와 모델 예제"),
            Text("숫자 확인(핵심 데이터) ${_counter}"),
            ElevatedButton(
              onPressed: (){
                // 사용자가 버튼을 클릭하면 숫자가 올라가는 기능을 만들자
                setState(() {
                  _counter++;
                });
              },
              child: Text('증감'),
            )
          ],
        ),
      ),
    );
  }
}

// 1단계에서는 MV 개념으로 코딩을 했다면 ViewModel이라는 개념 적용해보기

// viewModel
class CounterViewModel {

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter(){
    _counter++;
  }

}
