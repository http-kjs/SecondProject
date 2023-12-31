package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.service.NoticeService;
import com.sist.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping("notice/notice.do")
	public String main_page(Model model) {
		return "notice/notice3";
	}
	
	@RequestMapping("notice/insert_ok.do")
	public String notice_insert(NoticeVO vo) {
		service.noticeInsert(vo);
		return "redirect:../notice/notice.do";
	}
	
}
