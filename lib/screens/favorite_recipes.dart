import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/models/recipe_model.dart';
import 'package:recipe_book/providers/recipes_provider.dart';
import 'package:recipe_book/screens/recipe_detail.dart';
import 'package:recipe_book/l10n/app_localizations.dart';
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
              ? Center(child: Text(AppLocalizations.of(context)!.noRecipes))
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
      child: Semantics(
        label: 'Tarjeta de recetas',
        hint: 'Toca para ver el detalle de la receta ${recipe.name}',
        child: Card(
          color: Colors.white,
          child: Column(children: [Text(recipe.name), Text(recipe.author)]),
        ),
      ),
    );
  }
}
