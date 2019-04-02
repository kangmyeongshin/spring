package kr.co.click.daoimpl;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.click.vo.MemberVO;
@Repository
public class MemberDaoImpl {
	@Inject
	private SqlSessionTemplate sql;
	
	
	public MemberVO idCheck(String uid) throws Exception {
		return sql.selectOne( ".idCheck", uid);

	}
}
