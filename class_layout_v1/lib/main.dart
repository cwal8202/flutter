import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  // 루트 위젯을 만들어 주는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buildButtonColumn(IconData iconData, Color color, String label) {
    return Column(
      children: [
        Icon(iconData, color: color),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: 
          Text(label, style: TextStyle(fontSize: 12, color: color),),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Column(children: [
          Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey),)
           ]
          ),
          Spacer(),
          Icon(Icons.star, color: Colors.red,),
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Text('41'),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(Icons.call, Colors.deepPurple, "CALL"),
        _buildButtonColumn(Icons.near_me, Colors.deepPurple, "ROUTE"),
        _buildButtonColumn(Icons.share, Colors.deepPurple, "SHARE"),
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'appTitle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset('assets/lake.jpeg'),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}
