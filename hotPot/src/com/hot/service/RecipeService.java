package com.hot.service;

import java.util.List;

import com.hot.model.Recipe;

public interface RecipeService {
	
	public List<Recipe> getRecipes();
	public int addRecipe(Recipe recipe);
}
