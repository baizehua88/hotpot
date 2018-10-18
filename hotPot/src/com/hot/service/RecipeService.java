package com.hot.service;

import java.util.List;

import com.hot.model.Recipe;
import com.hot.model.Staff;

public interface RecipeService {

	public List<Recipe> getRecipes(Recipe recipe);

	public int getConunt();

	public int addRecipe(Recipe recipe);

	public Recipe getRecipeById(Recipe recipe);

	public int updateRecipe(Recipe recipe);

	public int addStock(Recipe recipe);

	public List<Staff> searchBySortandState(Recipe recipe);

	public List<Staff> searchBySort(String rsort);

	public List<Staff> searchByState(String rstate);
	
	public List<Recipe> getAllre();

	boolean delRecipe(int id);
}
