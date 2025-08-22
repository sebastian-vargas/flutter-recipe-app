class Recipe {
  String id;
  String name;
  String author;
  String imageLink;
  List<String> recipeSteps;

  Recipe({
    required this.id,
    required this.name,
    required this.author,
    required this.imageLink,
    required this.recipeSteps,
  });

  factory Recipe.fromJSON(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      author: json['author'],
      imageLink: json['image_link'],
      recipeSteps: List<String>.from(json['recipe']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'author': author,
      'imageLink': imageLink,
      'recipe': recipeSteps,
    };
  }

  /* Poder ver las variables a traves de las consolas, solo es para DEBUG */
  @override
  String toString() {
    return 'Recipe{id: $id, name: $name, author: $author, imageLink: $imageLink, recipe: $recipeSteps}';
  }
}
