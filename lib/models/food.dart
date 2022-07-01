class Food {
  String name;
  String price;
  double rating;
  String imageLocation;
  int reviews;
  Food(
      {required this.name,
      required this.imageLocation,
      required this.price,
      required this.rating,
      required this.reviews});

  static List<Food> getPopularFoods() {
    return [
      Food(
          name: "Grilled Sandwich",
          imageLocation: "assets/images/sandwich.jpeg",
          price: "\$75.00",
          rating: 3,
          reviews: 800),
      Food(
          name: "Ice Cream",
          imageLocation: "assets/images/ice_cream.jpeg",
          price: "\$70.00",
          rating: 4.8,
          reviews: 764),
      Food(
          name: "Burger",
          imageLocation: "assets/images/burger.jpeg",
          price: "\$60.00",
          rating: 3.9,
          reviews: 323),
      Food(
          name: "Fruits",
          imageLocation: "assets/images/fruits.jpeg",
          price: "\$75.00",
          rating: 4.9,
          reviews: 289),
      Food(
          name: "Pizza",
          imageLocation: "assets/images/pizza.jpeg",
          price: "\$200.00",
          rating: 4.9,
          reviews: 963),
      Food(
          name: "Salade le Tomatina",
          imageLocation: "assets/images/image3.jpeg",
          price: "\$55.00",
          rating: 3,
          reviews: 200),
    ];
  }

  static List<Food> getBestFoods() {
    return getPopularFoods();
  }
}
