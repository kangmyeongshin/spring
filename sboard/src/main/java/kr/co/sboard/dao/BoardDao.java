package kr.co.sboard.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.sboard.vo.BoardVO;

@Repository
public class BoardDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void list() {
		
	}

	public void view() {
		
	}

	public void write(BoardVO vo) {
		mybatis.insert("ns_mapper_sql_board.INSERT_BOARD",vo);
		
	}
	public void modify() {
		
	}

	public void delete() {
		
	}
}
