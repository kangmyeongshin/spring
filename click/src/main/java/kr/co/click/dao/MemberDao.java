package kr.co.click.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.click.vo.MemberVO;

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

	public void faq() {
		
	}
	

}
