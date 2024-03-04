import 'package:oop_dart/member.dart';

abstract class MemberService{
  void signUp(Member member);
  Member? selectMember(num memberId);


}