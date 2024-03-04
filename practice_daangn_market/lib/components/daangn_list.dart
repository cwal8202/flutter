import 'package:flutter/material.dart';

class DaangnList extends StatelessWidget {
  const DaangnList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          SizedBox(
            child: Image.asset("assets/lake.jpeg"),
            width: 100,
            height: 100,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("제목"),
                Text("지역"),
                Text("가격")
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.favorite_outline),
              Text("1")
            ],
          )
        ],
      ),
    );
  }
}
