package kr.co.click.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.click.vo.ShopClothesImageVO;
import kr.co.click.vo.ShopClothesVO;

@Repository
public class ShopDao {
	@Inject
	private SqlSessionTemplate mybatis;

	public List<ShopClothesVO> selectGoodsList(String goodStatus) {
		return mybatis.selectList("bt.mapper.clothes.selectGoodsList", goodStatus);
	}
	
	
	public List<ShopClothesVO> listKindOfOuterGoods(String cate){
		return mybatis.selectList("bt.mapper.clothes.selectOuterGoodsList", cate);
	}
	public List<ShopClothesImageVO> shopdetail(String goods_id) {
		return mybatis.selectList("bt.mapper.clothes.selectImage",goods_id);
	}
}


