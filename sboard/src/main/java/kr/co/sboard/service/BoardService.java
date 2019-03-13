package kr.co.sboard.service;

import org.springframework.stereotype.Service;

import kr.co.sboard.vo.BoardVO;

@Service
public interface BoardService {
	public void list();
	public void view();
	public void write(BoardVO vo);
	public void modify();
	public void delete();

}
