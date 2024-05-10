// ignore_for_file: public_member_api_docs, sort_constructors_first
// Food item
class Food {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final FoodCategory category;
  final List<Addone> avalebleAddones;
  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.avalebleAddones,
  });
}

// Food Category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addone {
  final String name;
  final double price;
  Addone({
    required this.name,
    required this.price,
  });
}
