package com.jica.springshoppingmall;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jica.springshoppingmall.beans.PageBean;
import com.jica.springshoppingmall.beans.ProductBean;
import com.jica.springshoppingmall.beans.ProductCategoryBean;
import com.jica.springshoppingmall.beans.SearchBean;

@Controller
public class ClientMainController {
	@Autowired
	private SqlSessionTemplate db;
	// 메인 페이지
	@RequestMapping(value = "main.springshoppingmall", method = RequestMethod.GET)
	public String main(Model model) {
		
		ProductCategoryBean bean = db.selectOne("product_db.get_product_info_name", 2);
		model.addAttribute("product_category_bean", bean);
		
		ArrayList<List<ProductBean>> product_list = new ArrayList<List<ProductBean>>();

		for(int i = 1 ; i < 7 ; i++) {
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("min", 1);
			map.put("max", 4);
			map.put("product_category_idx", i);
			List<ProductBean> list = db.selectList("product_db.get_product_list", map);
			product_list.add(list);
		}
		
		model.addAttribute("product_list" , product_list);
		
		

		return "client/main/main";
	}
	
	// 검색하기 
	@RequestMapping(value = "search_product.springshoppingmall", method = RequestMethod.GET)
	public String search_product(Model model,

			@RequestParam(value = "search_product")  String search_product,
			@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num) {
			
			int min = ((page_num - 1) * 20) + 1;
			int max = min + 20 - 1;
			
			SearchBean bean = new SearchBean();
			bean.setMax(max);
			bean.setMin(min);
			bean.setSearch_product(search_product);
			
			
			if(search_product.length() != 0) {
				
			
			List <ProductBean> list = db.selectList("search_db.get_search_product", bean);
			
			// 페이지 네이션 구성을 위한 데이터를 가져온다.
			int cnt = db.selectOne("search_db.get_search_count" , search_product);
			if(cnt == 0) {
				return "common/no_result";
			} 
			PageBean page_bean = new PageBean(page_num, cnt, 20, 10);
			model.addAttribute("page_bean", page_bean);
			model.addAttribute("page_num", page_num);
			model.addAttribute("search_result" , list);
			model.addAttribute("search_product", search_product);
			
			return "client/main/search_product";
			} else {
				return "common/no_keyword";
			}
	}
}
