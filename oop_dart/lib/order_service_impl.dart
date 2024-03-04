
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/order_service.dart';

class OrderServiceImpl implements OrderService {

  // DIP
  MemberRepository memberRepository;
  DiscountPolicy discountPolicy;

  // DI - 생성자 의존 주입
  OrderServiceImpl(this.memberRepository, this.discountPolicy);


  @override
  Order createOrder(num memberId, String itemName, int itemPrice) {
    // 1. 회원 등급 조회
    Member? memberEntity = memberRepository.findById(memberId);
    // 2. 회원 등급에 맞는 할인 정책을 반영 한다.
    // null 강제 연산자
    int discountPrice = discountPolicy.discount(memberEntity!, itemPrice);

    // 3. 반환값이 Order 인스턴스를 생성한다.
    Order newOrder = Order(memberId: memberId, itemName: itemName,
        itemPrice: itemPrice, discountPrice: discountPrice);

    return newOrder;
  }

}