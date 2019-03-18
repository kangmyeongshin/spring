package kr.co.sboard.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.sboard.vo.BoardVO;
import kr.co.sboard.vo.FileVO;

@Service
public interface BoardService {

	public List<BoardVO> list(int start);
	public int getTotalCount();
	public int getPageEnd(int total);
	public int getLimitStart(String pg);
	public int getPageCountStart(int total, int limit);
	public int[] getPageGroupStartEnd(String pg, int pageEnd);
	
	public BoardVO view(String seq);
	public int write(BoardVO vo);
	public FileVO fileUpload(HttpServletRequest req,MultipartFile file, int parent);
	public FileVO fileDownload(int parent);
	
	public int modify(BoardVO vo);
	public void fileWrite(FileVO fvo);
	public FileVO fileView(String seq);
	public void delete(String seq);

}
