package kr.co.click.serviceImpl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.click.dao.MemberDao;
import kr.co.click.service.MemberService;
import kr.co.click.vo.MemberVO;
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



}
