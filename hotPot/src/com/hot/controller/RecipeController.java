package com.hot.controller;

import java.io.File;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Constant;
import com.hot.model.Recipe;
import com.hot.service.RecipeService;


@Controller
@RequestMapping("/recipe")
public class RecipeController {

	@Autowired
	@Qualifier("recipeService")
	private RecipeService recipeService;
	
	@RequestMapping("/recipeList.do")
	public ModelAndView recipeList(HttpSession session){
		ModelAndView mv = new ModelAndView();
		List<Recipe> recipeList = recipeService.getRecipes();
		System.out.println(recipeList);
		mv.addObject("recipeList", recipeList);
		mv.setViewName("table-list-img");
		session.setAttribute("recipeList", recipeList);
		return mv;		
	}
	
	@RequestMapping("/addRecipe.do")
	public ModelAndView addRecipe(Recipe recipe,MultipartFile file,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		if(file != null){
			String fileName = file.getOriginalFilename();
			String path = session.getServletContext().getRealPath("/assets/img/");
			file.transferTo(new File(Constant.path+fileName));
			System.out.println("执行了");
		}
		recipe.setRimage(file.getOriginalFilename());   		
    	System.out.println(recipe.getRimage());
		recipeService.addRecipe(recipe);
		mv.setViewName("redirect:/recipe/recipeList.do");
		return mv;				
	}
}
