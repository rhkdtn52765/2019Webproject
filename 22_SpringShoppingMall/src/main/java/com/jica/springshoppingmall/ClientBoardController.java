package com.jica.springshoppingmall;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.jica.springshoppingmall.beans.BoardCategoryBean;
import com.jica.springshoppingmall.beans.BoardContentBean;
import com.jica.springshoppingmall.beans.PageBean;
import com.jica.springshoppingmall.beans.UserBean;

@Controller
@SessionAttributes("login_bean")
public class ClientBoardController {
	
	@Autowired
	private SqlSessionTemplate db;
	// 게시판 메인
	@RequestMapping(value = "board_main.springshoppingmall", method = RequestMethod.GET)
	
	public String board_main(Model model,
		@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
		@RequestParam(value = "board_category_idx") int board_category_idx) {
		int min = ((page_num - 1) * 20) + 1;
		int max = min + 20 - 1;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("min", min);
		map.put("max", max);
		map.put("board_category_idx", board_category_idx);
		
		List<BoardContentBean> list = db.selectList("board_db.get_board_list", map);
		model.addAttribute("board_list", list);
		
		BoardCategoryBean bean = db.selectOne("board_db.get_board_info_name", board_category_idx);
		model.addAttribute("board_category_bean", bean);
		
		// 페이지 네이션 구성을 위한 데이터를 가져온다.
		int cnt = db.selectOne("board_db.get_board_cnt");
		PageBean page_bean = new PageBean(page_num, cnt, 20, 10);
		model.addAttribute("page_bean", page_bean);
		
		model.addAttribute("page_num", page_num);
		model.addAttribute("board_category_idx" , board_category_idx);
		return "client/board/board_main";
	}
		
	
	
	// 글 보기
	@RequestMapping(value = "board_read.springshoppingmall", method = RequestMethod.GET)
	public String board_read(Model model,
		@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
        @RequestParam(value = "board_category_idx") int board_category_idx,
        @RequestParam(value = "board_content_idx") int board_content_idx){
	
		System.out.println("board_content_idx : " + board_content_idx);
		
		BoardContentBean bean = db.selectOne("board_db.get_board_info", board_content_idx);
		
		BoardCategoryBean bean2 = db.selectOne("board_db.get_board_info_name", board_category_idx);
		model.addAttribute("board_category_bean", bean2);
		
		model.addAttribute("board_content_bean", bean);
		model.addAttribute("page_num", page_num);
		model.addAttribute("board_category_idx", board_category_idx);
		model.addAttribute("board_content_idx", board_content_idx);
		return "client/board/board_read";
	}
	
	// 수정하기
	@RequestMapping(value = "board_modify.springshoppingmall", method = RequestMethod.GET)
	public String board_modify(Model model,
		@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
        @RequestParam(value = "board_category_idx") int board_category_idx,
        @RequestParam(value = "board_content_idx") int board_content_idx){
	
		BoardContentBean bean = db.selectOne("board_db.get_board_info", board_content_idx);
		
		model.addAttribute("board_content_bean", bean);
		model.addAttribute("page_num", page_num);
		model.addAttribute("board_category_idx", board_category_idx);
		
		BoardCategoryBean bean2 = db.selectOne("board_db.get_board_info_name", board_category_idx);
		model.addAttribute("board_category_bean", bean2);
		model.addAttribute("board_content_idx", board_content_idx);
		
		return "client/board/board_modify";
	}

	// 글작성하기
	@RequestMapping(value = "board_write.springshoppingmall", method = RequestMethod.GET)
	public String board_write(Model model,
		@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
        @RequestParam(value = "board_category_idx") int board_category_idx) {
		
		BoardCategoryBean bean = db.selectOne("board_db.get_board_info_name", board_category_idx);
		
		model.addAttribute("board_category_bean", bean);	
		model.addAttribute("page_num", page_num);
		model.addAttribute("board_category_idx", board_category_idx);
		
			
		return "client/board/board_write";
	}
	
	// 글쓰기 처리
	@RequestMapping(value = "board_write_pro.springshoppingmall", method = RequestMethod.POST)
	public String board_write_pro(Model model, BoardContentBean board_content_bean, @ModelAttribute("login_bean") UserBean login_bean,

		@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num) {
		
		board_content_bean.setBoard_writer_idx(login_bean.getUser_idx());
		
		/*
		 * System.out.println(board_content_bean.getBoard_content_subject());
		 * System.out.println(board_content_bean.getBoard_content_text());
		 * System.out.println(board_content_bean.getBoard_idx());
		 * System.out.println(board_content_bean.getBoard_writer_idx());
		 */
		
		
		db.insert("board_db.add_content", board_content_bean);
		
		model.addAttribute("result", "OK");
		model.addAttribute("page_num", page_num);
		model.addAttribute("board_category_idx", board_content_bean.getBoard_category_idx());
		
		int new_board_idx = db.selectOne("board_db.get_new_board_idx");
		model.addAttribute("board_content_idx", new_board_idx);
		
		
		return "client/board/board_write_pro";
		
	}
	
	// 수정하기 확인 처리 프로그램
	   @RequestMapping(value = "board_modify_pro.springshoppingmall", method = RequestMethod.POST)
	   public String board_modify_pro(Model model, BoardContentBean board_content_bean,
	         
	   @ModelAttribute("login_bean") UserBean login_bean,
	   @RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num,
	   @RequestParam(value = "board_category_idx") int board_category_idx,
	   @RequestParam(value = "board_content_idx") int board_content_idx) {
	      System.out.println(board_category_idx);
	      
	      db.update("board_db.board_content_modify", board_content_bean);
	      
	      model.addAttribute("result", "OK");
	      model.addAttribute("page_num", page_num);
	      model.addAttribute("board_category_idx", board_category_idx);
	      model.addAttribute("board_content_idx", board_content_bean.getBoard_content_idx());
	      
	      return "client/board/board_modify_pro";

	   }   
			
		// 삭제하기 처리
		@RequestMapping(value = "board_delete.springshoppingmall", method = RequestMethod.GET)
		public String board_delete(Model model,@ModelAttribute("login_bean") UserBean login_bean,
		
			BoardContentBean board_content_bean,
		    @RequestParam (value = "board_content_idx") int board_content_idx,
			@RequestParam (value = "board_category_idx") int board_category_idx,
			@RequestParam(value = "page_num", required = false, defaultValue = "1") int page_num){
			
			board_content_bean.setBoard_writer_idx(login_bean.getUser_idx());
			
			db.delete("board_db.delete_content", board_content_bean);
			
			model.addAttribute("board_content_idx", board_content_idx);
			model.addAttribute("board_category_idx", board_category_idx);
			model.addAttribute("page_num", page_num);
			
			return "client/board/board_delete";
			
			
			
	}
	
}
