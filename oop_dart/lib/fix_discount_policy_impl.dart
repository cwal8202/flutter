import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';

class FixDiscountPolicy implements DiscountPolicy {

  // 멤버 변수
  int discountFixAmount = 1500;


  @override
  int discount(Member member, int price) {
     // 함수 -- 연산자, 조건, 반복, 함수
    if(member.grade == Grade.VIP) {
      return discountFixAmount;
    }
    return 0;

  }


}