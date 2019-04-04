package kr.co.click.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.click.vo.MemberVO;
import kr.co.click.vo.MypageVO;
import kr.co.click.vo.TermsVO;

@Repository
public class MemberDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	public MemberVO login(MemberVO vo) {
		return mybatis.selectOne("cl.mapper.member.SELECT_MEMBER",vo);
	}
	public void join(MemberVO vo) {
		mybatis.insert("cl.mapper.member.INSERT_MEMBER",vo);
	}

	public TermsVO terms() {
		return mybatis.selectOne("cl.mapper.member.SELECT_TERMS");
	}
	
	public void faq() {
		
	}

	public MemberVO idCheck(String uid) {
		return mybatis.selectOne("cl.mapper.member.idcheck",uid);
	}
	public int modify(MemberVO vo) {
		return mybatis.update("cl.mapper.member.UPDATE_REGISTER",vo);
	}
	public MypageVO myOrder(MemberVO member) {
		return mybatis.selectOne("cl.mapper.member.SELECT_MYORDER",member);
	}


}
