package com.jica.springshoppingmall;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.jica.springshoppingmall.beans.PageBean;
import com.jica.springshoppingmall.beans.ProductBean;
import com.jica.springshoppingmall.beans.ProductCategoryBean;

@Controller
@SessionAttributes("login_bean")
public class ClientProductController {
	@Autowired
	private SqlSessionTemplate db;
	// 상품 리스트
	@RequestMapping(value = "product_list.springshoppingmall", method = RequestMethod.GET)
	
	public String product_list(Model model,
			@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
			@RequestParam(value = "product_category_idx") int product_category_idx) {
			
			ProductCategoryBean bean = db.selectOne("product_db.get_product_info_name", product_category_idx);
			model.addAttribute("product_category_bean", bean);
			
			
			int min = ((page_num - 1) * 20) + 1;
			int max = min + 20 - 1;
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("min", min);
			map.put("max", max);
			map.put("product_category_idx", product_category_idx);
			
			List<ProductBean> list = db.selectList("product_db.get_product_list", map);
			model.addAttribute("product_list" , list);
			
			
			
			// 페이지 네이션 구성을 위한 데이터를 가져온다.
			int cnt = db.selectOne("product_db.get_product_cnt", product_category_idx);
			PageBean page_bean = new PageBean(page_num, cnt, 20, 10);
			model.addAttribute("page_bean", page_bean);
			
			model.addAttribute("page_num", page_num);
			model.addAttribute("product_category_idx" , product_category_idx);
			return "client/product/product_list";
		}
	
	
	// 상품 상세 정보
	@RequestMapping(value = "product_detail.springshoppingmall", method = RequestMethod.GET)
	public String product_detail(Model model,
			@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
			@RequestParam(value = "product_idx") int product_idx,
			@RequestParam(value = "product_category_idx") int product_category_idx) {
			
			ProductBean bean = db.selectOne("product_db.get_product_detail", product_idx);
			model.addAttribute("product_bean", bean);
			model.addAttribute("product_idx", product_idx);
			model.addAttribute("product_category_idx", product_category_idx);

		return "client/product/product_detail";
	}
	
	
}






