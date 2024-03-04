import 'package:flutter/material.dart';


class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 15)),
        SizedBox(height: 2),
        Text(title, style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget _buildLine() {
    // 주의 - color 과 decoration 동시 사용시 오류 발생
    return Container(
      width: 1.3,
      height: 60,
      color: Colors.blue,
    );
  }

}
