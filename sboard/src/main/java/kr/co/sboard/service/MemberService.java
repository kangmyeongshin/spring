package kr.co.sboard.service;

import org.springframework.stereotype.Service;

import kr.co.sboard.vo.MemberVO;
import kr.co.sboard.vo.TermsVO;
@Service
public interface MemberService {
	
	public MemberVO login(MemberVO vo);
	public TermsVO terms();
	public void register(MemberVO vo);


}
