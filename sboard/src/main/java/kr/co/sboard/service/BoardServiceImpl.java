package kr.co.sboard.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.sboard.dao.BoardDao;
import kr.co.sboard.vo.BoardVO;
import kr.co.sboard.vo.FileVO;
@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDao dao;
	
	@Override
	public List<BoardVO> list(int start) {
		return dao.list(start);
		
	}
	
	
	@Override
	public int getTotalCount() {
		return dao.getTotalCount();
	}
	@Override
	public int getPageEnd(int total) {
		int pageEnd = 0;
		
		if(total % 10 == 0) {
			pageEnd = total/ 10;
		}else {
			pageEnd = (total / 10) +1;
		}
		
		return pageEnd;
	}
	
	@Override
	public int getLimitStart(String pg) {
		int start = 0;

 		if(pg == null){
			start = 1;
		}else{
			start = Integer.parseInt(pg);
		}

 		return (start - 1) * 10;
	}
	@Override
	public int getPageCountStart(int total, int limit) {
		return total - limit;
	}
	@Override
	public int[] getPageGroupStartEnd(String pg, int pageEnd) {
		int[] groupStartEnd = new int[2];
		int current = 0;
		if(pg == null) {
			current = 1;
		}else {
			current = Integer.parseInt(pg);
		}
		int currentPage = current;
		int currentPageGroup = (int)Math.ceil(currentPage/10.0);
		int groupStart = (currentPageGroup - 1) * 10 + 1;
		int groupEnd = currentPageGroup * 10;
		if(groupEnd > pageEnd){
			groupEnd = pageEnd;
		}

 		groupStartEnd[0] = groupStart;
		groupStartEnd[1] = groupEnd;

 		return groupStartEnd;
	}
	
		
		

	@Override
	public BoardVO view(String seq) {
		return dao.view(seq);
	}
	@Override
	public int write(BoardVO vo) {
		return dao.write(vo);
	}

	@Override
	public FileVO fileUpload(HttpServletRequest req, MultipartFile file,int parent) {
		//파일업로드 처리시작
		//파일이 저장될 디렉터리 경로 설정
				String path= req.getSession().getServletContext().getRealPath("/");
				path += "resources/upload/";
				
				if(!file.isEmpty()) {
					//파일이 첨부되었을 때
					String oName = file.getOriginalFilename();
					String ext = oName.substring(oName.lastIndexOf("."));
					//교유파일명 생성
					String uName = UUID.randomUUID().toString()+ext;
					
					//파일 저장
					try {
						file.transferTo(new File(path+uName));				
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					FileVO fvo = new FileVO();
					fvo.setParent(parent);
					fvo.setOldName(oName);
					fvo.setNewName(uName);
					
					return fvo;
				}else {
					return null;			
				}
				// 파일 업로드 처리 끝
			}



	
	@Override
	public void delete(String seq) {
		 dao.delete(seq);
		
	}



	@Override
	public void fileWrite(FileVO fvo) {
		dao.fileWrite(fvo);
		
	}


	@Override
	public FileVO fileView(String seq) {
		return dao.fileView(seq);
	}


	@Override
	public FileVO fileDownload(int parent) {
		return dao.fileDownload(parent);
		
	}




	@Override
	public int modify(BoardVO vo) {
		return dao.modify(vo);
	}


	








	
	


}
