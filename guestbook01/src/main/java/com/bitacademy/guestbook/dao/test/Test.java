package com.bitacademy.guestbook.dao.test;

import java.util.List;

import com.bitacademy.guestbook.dao.GuestBookDao;
import com.bitacademy.guestbook.vo.GuestBookVo;

public class Test {

	public static void main(String[] args) {
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo newvo = new GuestBookVo();
		newvo.setNo(10L);
		newvo.setPassword("1234");
//		newvo.setText("hi");
//		dao.insert(newvo);
		
//		List<GuestBookVo> list = dao.findAll();
//		for(GuestBookVo vo : list) {
//			System.out.println(vo);
//		}
		dao.delete(newvo);
	}

}
