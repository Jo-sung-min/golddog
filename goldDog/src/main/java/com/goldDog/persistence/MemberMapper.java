package com.goldDog.persistence;

import com.goldDog.domain.MemberVO;

public interface MemberMapper {
	
	//회원 추가
	public int addMember(MemberVO member);
	
	//회원 한 명 정보 가져오기
	public MemberVO getMember(String m_no);
	
	//회원 정보 수정
	public int updateMember(MemberVO member);
	
	//회원 삭제
	public int deleteMember(String m_no);
	
	//아이디 비번 확인
	public int idPwCheck(MemberVO member);
	
	
}