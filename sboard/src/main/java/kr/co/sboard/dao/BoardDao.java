package kr.co.sboard.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.sboard.vo.BoardVO;
import kr.co.sboard.vo.FileVO;

@Repository
public class BoardDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public List<BoardVO> list(int start) {
 		return mybatis.selectList("ns_mapper_sql_board.SELECT_LIST" , start);
	}
	public int getTotalCount() {
		return mybatis.selectOne("ns_mapper_sql_board.SELECT_LIST_COUNT");
	}
	
	public int write(BoardVO vo) {
		mybatis.insert("ns_mapper_sql_board.INSERT_BOARD",vo);
		return vo.getSeq();
	}
	public BoardVO view(String seq) {
		return mybatis.selectOne("ns_mapper_sql_board.SELECT_VIEW",seq);
	}	

	public void fileWrite(FileVO fvo) {
		mybatis.insert("ns_mapper_sql_board.INSERT_FILE",fvo);
	}
	public FileVO fileView(String seq) {
		return mybatis.selectOne("ns_mapper_sql_board.SELECT_FILEVIEW",seq);
	}
	public FileVO fileDownload(int parent) {
		return mybatis.selectOne("ns_mapper_sql_board.SELECT_FILE",parent);
		
	}

	public void delete(String seq) {
		mybatis.delete("ns_mapper_sql_board.DELETE_LIST",seq);
		
	}
	public int modify(BoardVO vo) {
		return mybatis.update("ns_mapper_sql_board.UPDATE_LIST",vo);
		
		
	}

}
