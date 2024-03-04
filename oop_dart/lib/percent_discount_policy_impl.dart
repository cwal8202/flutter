
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';

class PercentDiscountPolicy implements DiscountPolicy {

  double discountPercent = 10; // 10% 할인


  @override
  int discount(Member member, int price) {
    if(member.grade == Grade.VIP) {
      // dart에서는 자동 형 변환이 없다. --> 명시적 형 변환이 있다.
      // (상품금액 * (10% / 100) --> double
      return (price * (discountPercent / 100)).toInt();
      // toInt()는 소수점 버림
    }
    return 0;
  }


}