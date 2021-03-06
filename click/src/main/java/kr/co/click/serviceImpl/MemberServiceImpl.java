package kr.co.click.serviceImpl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.click.dao.MemberDao;
import kr.co.click.service.MemberService;
import kr.co.click.vo.MemberVO;
import kr.co.click.vo.MypageVO;
import kr.co.click.vo.TermsVO;
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDao dao;
	
	@Override
	public MemberVO login(MemberVO vo) {
		return dao.login(vo);
		
	}

	@Override
	public void join(MemberVO vo) {
		dao.join(vo);
	}

	@Override
	public void faq() {
		
	}

	@Override
	public MemberVO idCheck(String uid) {
		return dao.idCheck(uid);
	}

	@Override
	public void modify(MemberVO vo) {
		
		 dao.modify(vo);
	}

	@Override
	public TermsVO terms() {
		return dao.terms();
	}

	@Override
	public MypageVO myOrder(MemberVO member) {
		return dao.myOrder(member);
	}


	



}
