package kr.co.click.service;

import kr.co.click.vo.MemberVO;

public interface MemberService {
	public MemberVO login(MemberVO vo);
	public void join(MemberVO vo);
	public void faq();

}
