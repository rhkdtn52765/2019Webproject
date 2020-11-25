package com.jica.springshoppingmall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClientBuyController {
	
	// 장바구니
	@RequestMapping(value = "buy_cart.springshoppingmall", method = RequestMethod.GET)
	public String buy_cart() {
		return "client/buy/buy_cart";
	}
	
	// 구매이력
	@RequestMapping(value = "buy_history.springshoppingmall", method = RequestMethod.GET)
	public String buy_histroy() {
		return "client/buy/buy_history";
	}
	
	// 구매이력 상세
	@RequestMapping(value = "buy_detail.springshoppingmall", method = RequestMethod.GET)
	public String buy_detail() {
		return "client/buy/buy_detail";
	}
	
	// 구매 상품 상세
	@RequestMapping(value = "buy_product_detail.springshoppingmall", method = RequestMethod.GET)
	public String buy_product_detail() {
		return "client/buy/buy_product_detail";
	}
}
