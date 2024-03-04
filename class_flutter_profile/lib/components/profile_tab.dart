import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of StatefulWidget

// 애니메이션 효과 구현 처리 - 미리 만들어 둔 녀석
class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
  // _ 적는것은 접근 제한 지시자가 private이다. private, public
  TabController? _tabController;

  // initState 메서드는 인스턴스화 될때 단 한번만 호출 되는 녀석
  // 즉 필요한 초기값이 있다면 initState 에서 구현할 수 있다.
  // 단, 랜더링 처리는(화면에 그림을 그리는 동작은) 지양한다
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // 화면을 그려주는 메서드
  // 선언형 UI 라는 개념을 이해하자.

  @override
  Widget build(BuildContext context) {
    print("화면 그릴때 마다 나오는 문자입니다~~");
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),

      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_train)),
        ]
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
        ),
            itemBuilder: (context, index) {
              return Image.network("https://picsum.photos/id/${index}/200/200");
            },
            itemCount: 42,),
        Container(color: Colors.blue),
    ],

    );
  }

} // end of State
