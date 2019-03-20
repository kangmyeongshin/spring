package kr.co.booktopia.service;

import org.springframework.stereotype.Service;

import kr.co.booktopia.vo.ShopGoodsImageVO;
import kr.co.booktopia.vo.ShopGoodsVO;
@Service
public interface ShopService {
	public void goodsList();
	public ShopGoodsVO goodsView(String goods_id);
	public ShopGoodsImageVO goodsDetailImage(String goods_id);

}
