import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/models/recipe_model.dart';
import 'package:recipe_book/providers/recipes_provider.dart';
import 'package:recipe_book/screens/recipe_detail.dart';

class FavoriteRecipes extends StatelessWidget {
  const FavoriteRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<RecipesProvider>(
        builder: (context, recipeProvider, child) {
          final favoritesRecipes = recipeProvider.favoritesRecipes;
          return favoritesRecipes.isEmpty
              ? Center(child: Text('No favorites Recipes'))
              : ListView.builder(
                  itemCount: favoritesRecipes.length,
                  itemBuilder: (context, index) {
                    final recipe = favoritesRecipes[index];
                    return FavoriteRecipesCard(
                      recipe: recipe,
                    );
                  },
                );
        },
      ),
    );
  }
}

class FavoriteRecipesCard extends StatelessWidget {
  final Recipe recipe;
  const FavoriteRecipesCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetail(recipesData: recipe),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: Column(children: [Text(recipe.name), Text(recipe.author)]),
      ),
    );
  }
}
