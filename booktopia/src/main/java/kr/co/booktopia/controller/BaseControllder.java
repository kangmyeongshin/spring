package kr.co.booktopia.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class BaseControllder {
	
	/*
	 * 이미지 썸네일 메서드
	 *  - 웹 애플리케이션에서 이미지를 목록으로 표시할 때는 썸네일 이미지를 사용한다.
	 *  - 웹 브라우저에 표시할 이미지 갯수가 많을 경우 이미지를 썸네일로 축소해서 신속하게 표시한다.
	 *  - pom.xml 썸네일 라이브러리 추가 (thumbnailator-0.4.8.jar)  
	 */
	
	@RequestMapping("/goods/thumbnail")
	protected void thumbnails(String fileName, String goods_id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String imgPath = req.getSession().getServletContext().getRealPath("/")+"/resources/goods";
		
		OutputStream out = resp.getOutputStream();
		String filePath = imgPath+"/"+goods_id+"/"+fileName;
		File image = new File(filePath);
		
		if(image.exists()) {
			// 썸네일 크기설정 및 형식 출력
		Thumbnails.of(image).size(121,154).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024*8];
		out.write(buffer);
		out.close();
	}
	
	@RequestMapping("/goods/download")
	public void download(String fileName,String goods_id, HttpServletRequest req,HttpServletResponse resp) throws Exception {
		String imgPath = req.getSession().getServletContext().getRealPath("/")+"/resources/goods";
		
		OutputStream out = resp.getOutputStream();
		String filePath=imgPath+"/"+goods_id+"/"+fileName;
		
		File image=new File(filePath);
		
		resp.setHeader("Cache-Control", "no-cache");
		resp.setHeader("Content-Disposition", "attachment; filename="+fileName);
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.setHeader("Pragma", "no-cache");
		
		// 스트림 연결 : 파일 ---- response객체 
		BufferedInputStream  bis = new BufferedInputStream(new FileInputStream(image));
		BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream()); 
		
		
		byte buffer[] = new byte[1024*8];
		
		while(true){
			// Input스트림으로 데이터 읽어오기	
			int read = bis.read(buffer);
			if(read == -1){
				break;
			}
			
			// Output 스트림으로 데이터 쓰기
			bos.write(buffer, 0, read);
		}
		
		bis.close();
		bos.close();
		
	}
		
}
