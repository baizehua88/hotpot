package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.RecipeDao;
import com.hot.model.Recipe;
import com.hot.service.RecipeService;

@Service("recipeService")
public class RecipeServiceImpl implements RecipeService {
	@Autowired
	@Qualifier("recipeDao")
	private RecipeDao recipeDao;
	
	@Override
	public List<Recipe> getRecipes() {
		// TODO Auto-generated method stub
		return recipeDao.getRecipes();
	}

	@Override
	public int addRecipe(Recipe recipe) {
		// TODO Auto-generated method stub
		return recipeDao.addRecipe(recipe);
	}
}
