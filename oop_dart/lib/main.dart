//코드의 시작점
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/fix_discount_policy_impl.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/memberServiceImpl.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/order_service.dart';
import 'package:oop_dart/order_service_impl.dart';
import 'package:oop_dart/percent_discount_policy_impl.dart';

void main() {
  // 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();
  MemberService memberService = MemberServiceImpl(memberRepository);

  Member member1 = Member(id: 1, name: '홍길동', grade: Grade.VIP);
  Member member2 = Member(id: 2, name: '이순신', grade: Grade.VIP);
  memberService.signUp(member1);
  // 회원 찾기
  Member? findMember = memberService.selectMember(member1.id);

  print('-----------------------------------');
  // 할인
  // 1 - 고정할인 정책 선택
  // 2 - 페센트 할인 정책 선택
  DiscountPolicy discountPolicy = PercentDiscountPolicy();
  OrderService orderService =
  OrderServiceImpl(memberRepository, discountPolicy);

  //! 연산자는 runtime시점에서 오류가 난다.
  Order createdOrder = orderService.createOrder(findMember!.id, "맥북", 2000000);
  print(createdOrder.toString());
}