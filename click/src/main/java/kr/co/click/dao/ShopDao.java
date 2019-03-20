package kr.co.click.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.click.vo.ShopClothesVO;

@Repository
public class ShopDao {
	@Inject
	private SqlSessionTemplate mybatis;

	public List<ShopClothesVO> selectGoodsList(String goodStatus) {
		return mybatis.selectList("bt.mapper.clothes.selectGoodsList",goodStatus);
	}
}
