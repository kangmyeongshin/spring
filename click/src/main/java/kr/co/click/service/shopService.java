package kr.co.click.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.click.vo.ShopClothesVO;

@Service
public interface shopService {
	


	public Map<String, List<ShopClothesVO>> listGoods() throws Exception;

}
