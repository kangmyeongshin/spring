package kr.co.booktopia.controller;

import java.io.File;
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

}
