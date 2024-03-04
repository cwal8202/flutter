import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Tencoding',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            )),
        Text(
            '프로그래머/프리랜서',
            style: TextStyle(
          fontSize: 15,
        )),
        Text(
            '그린 프로그램', style: TextStyle(
          fontSize: 15,
        ))
      ],
    );
  }

}
