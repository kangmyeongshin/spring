package kr.co.click.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.click.dao.ShopDao;
import kr.co.click.service.shopService;
import kr.co.click.vo.ShopClothesImageVO;
import kr.co.click.vo.ShopClothesVO;
@Service
public class ShopServiceImple implements shopService{
	@Inject
	private ShopDao dao;
	
	@Override
	public Map<String, List<ShopClothesVO>> listGoods() throws Exception {
		
		Map<String, List<ShopClothesVO>> goodsMap = new HashMap<String, List<ShopClothesVO>>();

 		List<ShopClothesVO> goodsList = dao.selectGoodsList("new");
		goodsMap.put("new", goodsList);
		goodsList = dao.selectGoodsList("outer");
		goodsMap.put("outer", goodsList);
		goodsList = dao.selectGoodsList("knit/cardigan");
		goodsMap.put("knit", goodsList);
		
		

		return goodsMap;
	}

	@Override
	public List<ShopClothesVO> listKindOfOuterGoods(String cate) {
		return dao.listKindOfOuterGoods(cate);
	}

	@Override
	public ShopClothesVO shopdetail(String goods_id) {
		return dao.shopdetail(goods_id);
	}

}
