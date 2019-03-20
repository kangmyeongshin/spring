package kr.co.click.controller;

import java.io.File;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.click.service.shopService;
import kr.co.click.vo.ShopClothesVO;
import net.coobird.thumbnailator.Thumbnails;

@Controller
class CateController {
	@Inject
	public shopService service;
	
	@RequestMapping("/cate/new")
	public String newc(Model model) throws Exception {
		Map<String, List<ShopClothesVO>> goodsMap = service.listGoods();

 		model.addAttribute("goodsMap", goodsMap);
		return "/cate/new";
	}
	
	@RequestMapping("/cate/outer")
	public String outer(Model model) throws Exception {
		
		Map<String, List<ShopClothesVO>> goodsMap = service.listGoods();
 		model.addAttribute("goodsMap", goodsMap);
		return "/cate/outer";
	}
	
	@RequestMapping("/cate/kindofOuter")
	public String coat(Model model, String cate) throws Exception {
		//System.out.println(cate);
		List<ShopClothesVO> goodsList = service.listKindOfOuterGoods(cate);
 		model.addAttribute("goodsList", goodsList);
 		
		return "/cate/outer";
	}
	
	@RequestMapping("/cate/knit")
	public String knit(Model model) throws Exception {
		
		Map<String, List<ShopClothesVO>> goodsMap = service.listGoods();
 		model.addAttribute("goodsMap", goodsMap);
		return "/cate/knit";
	}
	@RequestMapping("/cate/kindofKnit")
	public String knitList(Model model, String cate) throws Exception {
		//System.out.println(cate);
		List<ShopClothesVO> goodsList = service.listKindOfOuterGoods(cate);
 		model.addAttribute("goodsList", goodsList);
		
		return "/cate/knit";
 
	}
	
	@RequestMapping("/detail/thumbnail")
	protected void thumbnails(String fileName, String goods_id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String imgPath = req.getSession().getServletContext().getRealPath("/")+"/resources/detail";
		
		OutputStream out = resp.getOutputStream();
		String filePath = imgPath+"/"+goods_id+"/"+fileName;
		File image = new File(filePath);
		
		if(image.exists()) {
			// 썸네일 크기설정 및 형식 출력
		Thumbnails.of(image).size(378,500).outputFormat("gif").toOutputStream(out);
		}
		byte[] buffer = new byte[1024*8];
		out.write(buffer);
		out.close();
	}
	

}
