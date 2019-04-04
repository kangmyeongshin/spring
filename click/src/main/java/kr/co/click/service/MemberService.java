package kr.co.click.service;

import kr.co.click.vo.MemberVO;
import kr.co.click.vo.MypageVO;
import kr.co.click.vo.TermsVO;

public interface MemberService {
	public MemberVO login(MemberVO vo);
	public void join(MemberVO vo);
	public void faq();
	public MemberVO idCheck(String uid) throws Exception;
	public void modify(MemberVO vo);
	public TermsVO terms();
	public MypageVO myOrder(MemberVO member);
	

}
