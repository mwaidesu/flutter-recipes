class Recipe {
  String label;
  String imageUrl;

  ///Add servings /ingredients

  Recipe(
    this.label,
    this.imageUrl,
  );

  //Add List<Recipe>
  static List<Recipe> samples = [
    Recipe(
      "Spaghetti and Meatballs",
      "assets/spaghettimeatballs.jpg",
    ),
        Recipe(
      "Tomato Soup",
      "assets/tomatosoup.jpg",
    ),
        Recipe(
      "Grilled Cheese",
      "assets/grilledcheese.jpg",
    ),
        Recipe(
      "Chocolate Chip Cookies",
      "assets/cholateChip.jpg",
    ),
        Recipe(
      "Taco Salad",
      "assets/tacoSalad.jpg",
    ),
        Recipe(
      "Hawaiian Pizza",
      "assets/hawaiianPizza.jpg",
    ),
  ];
}

//Add Ingrediebt() here