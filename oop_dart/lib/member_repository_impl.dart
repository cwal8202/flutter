
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';

class MemoryMemberRepositoryImpl implements MemberRepository {

  Map<num, Member> memberStore = {};

  // 변수, 조건문, 반복문, 함수... 기능 구현하기
  @override
  Member? findById(num memberId) {
    // map 구조에 데이터를 찾는 문법은?
    Member? findMember = memberStore[memberId];
    return findMember;
  }

  @override
  void save(Member member) {
    memberStore[member.id] = member;
    print('member 저장 처리 완료');
  }
}