package kr.co.sboard.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.sboard.dao.BoardDao;
import kr.co.sboard.vo.BoardVO;
@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDao dao;
	
	@Override
	public void list() {
		dao.list();
	}

	@Override
	public void view() {
		dao.view();
	}

	@Override
	public void write(BoardVO vo) {
		dao.write(vo);
	}

	@Override
	public void modify() {
		dao.modify();
	}

	@Override
	public void delete() {
		dao.delete();
	}

}
