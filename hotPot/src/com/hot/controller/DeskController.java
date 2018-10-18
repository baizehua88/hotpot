package com.hot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Desk;
import com.hot.model.Staff;
import com.hot.service.DeskService;

@Controller
@RequestMapping("/desk")
public class DeskController {
	@Autowired
	@Qualifier("deskService")
	private DeskService deskService;

	@RequestMapping("/deskList.do")
	public ModelAndView deskList() {
		ModelAndView mv = new ModelAndView();
		List<Desk> deskList = deskService.getDesks();
		mv.addObject("deskList", deskList);
		mv.setViewName("frontService");
		return mv;

	}
	// 改变餐桌使用状态
	@RequestMapping("/updateDeskState.do")
	@ResponseBody
	public void updateDeskState(int did) {
		deskService.updateDeskState(did);
		return;
	}

	/**
	 * 添加
	 * 
	 * @param desk
	 * @return
	 */
	@RequestMapping("/addFrontService.do")
	public ModelAndView addFrontService(Desk desk) {
		ModelAndView mView = new ModelAndView();
		System.out.println(desk);
		if (deskService.addFrontService(desk)) {
			mView.setViewName("redirect:/desk/deskList.do");
		}
		return mView;

	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delFrontService.do")
	public ModelAndView delFrontService(Integer did) {
		ModelAndView mView = new ModelAndView();

		System.out.println(did);
		if (deskService.delFrontService(did)) {
			mView.setViewName("redirect:/desk/deskList.do");
		}
		return mView;
	}

	/**
	 * 前台服务查询
	 * 
	 * @param desk
	 * @return
	 */
	@RequestMapping("/searchDesk.do")
	public ModelAndView searchDesk(Desk desk) {

		ModelAndView mView = new ModelAndView();
		System.out.println(desk.getDcount() + desk.getDstate());
		if (desk.getDcount() != null) {
			if (desk.getDstate() != null && desk.getDstate() != "") {
				List<Staff> deskList = deskService.searchByDcountandDstate(desk);
				mView.addObject("deskList", deskList);
				mView.setViewName("frontService");
			} else {
				List<Staff> deskList = deskService.searchByDcount(desk.getDcount());
				mView.addObject("deskList", deskList);
				mView.setViewName("frontService");
			}
		} else {
			if (desk.getDstate() != null && desk.getDstate() != "") {
				List<Staff> deskList = deskService.searchByDstate(desk.getDstate());
				mView.addObject("deskList", deskList);
				mView.setViewName("frontService");
			} else {
				mView.setViewName("redirect:/desk/deskList.do");
			}
		}

		return mView;
	}
}
