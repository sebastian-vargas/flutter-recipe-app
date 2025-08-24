import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:recipe_book/models/recipe_model.dart';
import 'package:http/http.dart' as http;

/* La librería Provider es una herramienta poderosa en Flutter para manejar y compartir estados entre widgets, haciéndolos más sencillos y reutilizables. 
 estructurar llamadas de API de manera eficiente. */
class RecipesProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Recipe> recipes = [];
  List<Recipe> favoritesRecipes = [];

  /* Consumo de servicios http Future es el Async, estoy consumiendo un servicio con Mockoon*/
  Future<void> fetchRecipes() async {
    isLoading = true;
    notifyListeners(); //Escuchando todos los movimientos de la llamada
    //Puertos para celular y localhost para navegador
    // Android 10.0.2.2
    // iOS 127.0.0.1
    final url = Uri.parse('http://10.0.2.2:3001/recipes');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        recipes = List<Recipe>.from(
          data['recipes'].map((recipe) => Recipe.fromJSON(recipe)),
        );
      } else {
        //print('Error ${response.statusCode}');
        recipes = [];
      }
    } catch (e) {
      //print('Error in Request');
      recipes = [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleFavoriteStatus(Recipe recipe) async {
    final alreadyFavorite = favoritesRecipes.contains(recipe);
    try {
      final url = Uri.parse('http://10.0.2.2:3001/favorites');
      final response = alreadyFavorite
          ? await http.delete(url, body: json.encode({"id": recipe.id}))
          : await http.post(url, body: json.encode(recipe.toJson()));

      if (response.statusCode == 200) {
        if (alreadyFavorite) {
          favoritesRecipes.remove(recipe);
        } else {
          favoritesRecipes.add(recipe);
        }
        notifyListeners();
      } else {
        throw Exception('Failed to update favorite recipes');
      }
    } catch (e) {
      //print('Error updating $e');
    } finally {
      notifyListeners();
    }
  }
}
