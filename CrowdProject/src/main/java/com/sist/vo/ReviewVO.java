package com.sist.vo;
//rno NUMBER,									
//id varchar2(30),							
//wfno NUMBER,								
//content varchar2(4000),						
//regdate DATE DEFAULT SYSDATE,				
//likecnt NUMBER DEFAULT 0,						
//category varchar2(20),

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int rno, wfno, likecnt;
	private String id, name, nickname, content, category, dbday;
	private Date regdate;
	
	private String filename, filesize, filepath;
	private List<MultipartFile> images;
}