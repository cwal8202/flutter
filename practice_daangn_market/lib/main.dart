import 'package:flutter/material.dart';
import 'package:practice_daangn_market/components/daangn_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "당근 마켓 따라하기",
      home: Scaffold(
        appBar: _buildDaangnMarketAppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.grey,
              height: 0.9,
            ),
            DaangnList(),
          ],
        )
        ,
      ),
    );
  }
}

AppBar _buildDaangnMarketAppBar(){
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("정자동"),
        Icon(Icons.keyboard_arrow_down_outlined),
      ],
    ),
    actions: [
      Row(
        children: [
          Icon(Icons.search),
          Icon(Icons.menu),
          Icon(Icons.notifications_none),
          SizedBox(width: 10),
        ],
      )
    ],
  );
}