
import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(0xFFFFFFFF, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
  },
);

// 글로벌 함수
// main --> MA --> 변수(테마를 설정할 수 있다.)

// 이렇게 설정을 하면 primaryColor는 primaryWhtie, 아이콘은 blue 로 설정이 된다.
ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    )

  );
}