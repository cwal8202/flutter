
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_impl.dart';
import 'package:oop_dart/member_service.dart';

class MemberServiceImpl implements MemberService {

  // DIP
  // 상위 모듈은 하위 모듈에 의존해서는 안된다.
  // 즉 상위 모듈과 하위 모듈은 추상화에 의존해야 한다.
  MemberRepository memberRepository;
  // MemoryMemberRepositoryImpl memoryMemberRepositoryImpl;

  // 생성자 주입 - DI
  MemberServiceImpl(this.memberRepository);  // 단일 생성자

  @override
  Member? selectMember(num memberId) {
    // 인증, 유효성 ... 방어적 코드
    return memberRepository.findById(memberId);

  }

  @override
  void signUp(Member member) {
    memberRepository.save(member);
  }

}