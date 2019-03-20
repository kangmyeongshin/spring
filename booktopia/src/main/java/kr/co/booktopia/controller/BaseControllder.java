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
	 * �̹��� ����� �޼���
	 *  - �� ���ø����̼ǿ��� �̹����� ������� ǥ���� ���� ����� �̹����� ����Ѵ�.
	 *  - �� �������� ǥ���� �̹��� ������ ���� ��� �̹����� ����Ϸ� ����ؼ� �ż��ϰ� ǥ���Ѵ�.
	 *  - pom.xml ����� ���̺귯�� �߰� (thumbnailator-0.4.8.jar)  
	 */
	
	@RequestMapping("/goods/thumbnail")
	protected void thumbnails(String fileName, String goods_id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String imgPath = req.getSession().getServletContext().getRealPath("/")+"/resources/goods";
		
		OutputStream out = resp.getOutputStream();
		String filePath = imgPath+"/"+goods_id+"/"+fileName;
		File image = new File(filePath);
		
		if(image.exists()) {
			// ����� ũ�⼳�� �� ���� ���
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
		
		// ��Ʈ�� ���� : ���� ---- response��ü 
		BufferedInputStream  bis = new BufferedInputStream(new FileInputStream(image));
		BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream()); 
		
		
		byte buffer[] = new byte[1024*8];
		
		while(true){
			// Input��Ʈ������ ������ �о����	
			int read = bis.read(buffer);
			if(read == -1){
				break;
			}
			
			// Output ��Ʈ������ ������ ����
			bos.write(buffer, 0, read);
		}
		
		bis.close();
		bos.close();
		
	}
		
}
