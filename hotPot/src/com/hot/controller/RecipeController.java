package com.hot.controller;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Constant;
import com.hot.model.Recipe;
import com.hot.model.Staff;
import com.hot.service.RecipeService;
import com.hot.utils.DingZhi;
import com.hot.utils.ImportExcelUtil;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

	@Autowired
	@Qualifier("recipeService")
	private RecipeService recipeService;

	@RequestMapping("/recipeList.do")
	public ModelAndView recipeList(HttpSession session, Recipe recipe) {

		// 分页显示
		int page = 1;
		int start = 0;
		if (recipe.getPage() != null) {
			page = recipe.getPage();
		}
		// 数据总条数
		int total = recipeService.getConunt();
		// 总页数
		int totalPage = total / DingZhi.rows;
		Vector<Integer> pageArr = new Vector<Integer>();
		if (total % DingZhi.rows != 0) {
			totalPage += 1;
		}
		if (page >= DingZhi.page) {
			start = page / DingZhi.page * DingZhi.rows;
		}
		int num = start + 1;
		// 页数列表
		while (!(num > totalPage || num > start + DingZhi.page)) {
			pageArr.add(new Integer(num));
			++num;
		}
		start = (page - 1) * DingZhi.rows;
		recipe.setStart(start);
		recipe.setRows(DingZhi.rows);

		ModelAndView mv = new ModelAndView();
		List<Recipe> recipeList = recipeService.getRecipes(recipe);
		// System.out.println(recipeList);
		mv.addObject("recipeList", recipeList);
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
		mv.setViewName("table-list-img");
		session.setAttribute("recipeList", recipeList);
		return mv;
	}

	@RequestMapping("/recipeListorder.do")
	public ModelAndView recipeListorder(HttpServletRequest request, HttpSession session, Recipe recipe) {

		// 分页显示
		int page = 1;
		int start = 0;
		if (recipe.getPage() != null) {
			page = recipe.getPage();
		}
		// 数据总条数
		int total = recipeService.getConunt();
		// 总页数
		int totalPage = total / DingZhi.rows;
		Vector<Integer> pageArr = new Vector<Integer>();
		if (total % DingZhi.rows != 0) {
			totalPage += 1;
		}
		if (page >= DingZhi.page) {
			start = page / DingZhi.page * DingZhi.rows;
		}
		int num = start + 1;
		// 页数列表
		while (!(num > totalPage || num > start + DingZhi.page)) {
			pageArr.add(new Integer(num));
			++num;
		}
		start = (page - 1) * DingZhi.rows;
		recipe.setStart(start);
		recipe.setRows(DingZhi.rows);

		ModelAndView mv = new ModelAndView();
		List<Recipe> recipeList = recipeService.getRecipes(recipe);
		// System.out.println(recipeList);
		mv.addObject("recipeList", recipeList);
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
		if (page <= total / DingZhi.rows) {
			mv.addObject("totalre", DingZhi.rows);
		} else {
			mv.addObject("totalre", total % DingZhi.rows);
		}
		mv.setViewName("order");
		return mv;
	}

	@RequestMapping("/load.do")
	public ModelAndView uploadExcel(HttpServletRequest request) throws Exception {

		MultipartHttpServletRequest mServletRequest = (MultipartHttpServletRequest) request;

		ModelAndView mv = new ModelAndView();

		InputStream inputStream = null;
		List<List<Object>> listob = null;
		MultipartFile file = mServletRequest.getFile("upfile");
		if (file.isEmpty()) {
			throw new Exception("文件不存在");
		}
		inputStream = file.getInputStream();
		listob = new ImportExcelUtil().getBankListByExcel(inputStream, file.getOriginalFilename());
		inputStream.close();
		// 该出可调用Service相应方法进行数据保存到数据库中
		List<Recipe> lDevelopers = new ArrayList<Recipe>();
		for (int i = 0; i < listob.size(); i++) {
			List<Object> list = listob.get(i);
			Recipe recipe = new Recipe();
			recipe.setRname(String.valueOf(list.get(0)));
			recipe.setStock(Integer.parseInt(String.valueOf(list.get(1))));
			lDevelopers.add(recipe);
		}
		mv.addObject("totallist", listob.size());
		mv.addObject("Dlist", lDevelopers);
		mv.setViewName("GRN");
		return mv;
	}

	@RequestMapping("/addRecipe.do")
	public ModelAndView addRecipe(Recipe recipe, MultipartFile file, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		if (file != null) {
			String fileName = file.getOriginalFilename();
			String path = session.getServletContext().getRealPath("/assets/img/");
			file.transferTo(new File(Constant.path + fileName));
			System.out.println("执行了");
		}
		recipe.setRimage(file.getOriginalFilename());
		// System.out.println(recipe.getRimage());
		recipeService.addRecipe(recipe);
		mv.setViewName("redirect:/recipe/recipeList.do");
		return mv;
	}

	@RequestMapping("/getRecipeById.do")
	@ResponseBody
	public Recipe getRecipeById(Recipe recipe, HttpSession session) {
		// ModelAndView mv = new ModelAndView();
		// System.out.println(recipe.getRid());
		Recipe recipeById = recipeService.getRecipeById(recipe);
		// System.out.println(recipeById);
		// mv.addObject("recipeById", recipeById);
		// session.setAttribute("recipeById", recipeById);
		return recipeById;

	}

	@RequestMapping("/updateRecipe.do")
	public ModelAndView updateRecipe(Recipe recipe, MultipartFile file, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		if (file != null) {
			String fileName = file.getOriginalFilename();
			String path = session.getServletContext().getRealPath("/assets/img/");
			file.transferTo(new File(Constant.path + fileName));
			System.out.println("执行了");
		}
		recipe.setRimage(file.getOriginalFilename());
		// System.out.println(recipe.getRimage());
		// System.out.println(recipe);
		if (recipeService.updateRecipe(recipe) > 0) {
			System.out.println("修改成功！");
			mv.setViewName("redirect:/recipe/recipeList.do");
		} else {
			System.out.println("修改失败！");
			mv.setViewName("redirect:/recipe/recipeList.do");
		}
		return mv;
	}

	@RequestMapping("/delRecipe.do")
	public ModelAndView delRecipe(int id) {
		ModelAndView mView = new ModelAndView();

		if (recipeService.delRecipe(id)) {
			mView.setViewName("redirect:/recipe/recipeList.do");
		}
		return mView;
	}

	@RequestMapping("/searchRecipe.do")
	public ModelAndView searchRecipe(Recipe recipe) {

		ModelAndView mView = new ModelAndView();
		// System.out.println(recipe.getRsort() + recipe.getRstate());
		if (recipe.getRsort() != null && recipe.getRsort() != "") {
			if (recipe.getRstate() != null && recipe.getRstate() != "") {
				List<Staff> recipeList = recipeService.searchBySortandState(recipe);
				mView.addObject("recipeList", recipeList);
				mView.setViewName("table-list-img");
			} else {
				List<Staff> recipeList = recipeService.searchBySort(recipe.getRsort());
				mView.addObject("recipeList", recipeList);
				// System.out.println(recipeList);
				mView.setViewName("table-list-img");
			}
		} else {
			if (recipe.getRstate() != null && recipe.getRstate() != "") {
				List<Staff> recipeList = recipeService.searchByState(recipe.getRstate());
				mView.addObject("recipeList", recipeList);
				mView.setViewName("table-list-img");
			} else {
				mView.setViewName("redirect:/recipe/recipeList.do");
			}
		}

		return mView;
	}
}
