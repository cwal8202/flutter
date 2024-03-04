import 'package:class_flutter_profile/components/profile_button.dart';
import 'package:class_flutter_profile/components/profile_count_info.dart';
import 'package:class_flutter_profile/components/profile_drawer.dart';
import 'package:class_flutter_profile/components/profile_header.dart';
import 'package:class_flutter_profile/components/profile_tab.dart';
import 'package:class_flutter_profile/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp 함수 --> 해당 하는 위젯을 루트 위젯으로 만들어 준다.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // builde 함수는 객체가 메모리에 올라가면 자동으로
  // 한번은 호출이 된다. 그림을 그려주는 함수
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
} // end of MyApp

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildProfileAppBar(),
        endDrawer: ProfileDrawer(),
        // appBar 만들 예정
        // drawer 만들 예정
        body: Column(
          children: [
            const SizedBox(height: 20),
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            ProfileButtons(),
            // 남아 있는 세로 공간을 모두 차지하기 위해 확장을 한다.
            Expanded(
              flex: 1,
                child: ProfileTab()),
          ],
        ),
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Profile"),
      centerTitle: true,
    );
  }

}
