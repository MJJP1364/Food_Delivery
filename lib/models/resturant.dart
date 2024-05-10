import 'food_model.dart';

class Resturant {
  final List<Food> _menu = [
    // Burger
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 8.99,
      imagePath: 'assets/images/burges/burger1.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 0.99),
        Addone(name: 'Bacon', price: 1.49),
        Addone(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 10.99,
      imagePath: 'assets/images/burges/burger2.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 0.75),
        Addone(name: 'Bacon', price: 1.65),
        Addone(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 11.99,
      imagePath: 'assets/images/burges/burger3.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 0.89),
        Addone(name: 'Bacon', price: 1.59),
        Addone(name: 'Avocado', price: 2.10),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 10.50,
      imagePath: 'assets/images/burges/burger4.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 0.74),
        Addone(name: 'Bacon', price: 1.35),
        Addone(name: 'Avocado', price: 2.40),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 9.50,
      imagePath: 'assets/images/burges/burger5.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 1.45),
        Addone(name: 'Bacon', price: 1.80),
        Addone(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 12.85,
      imagePath: 'assets/images/burges/burger6.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 1.50),
        Addone(name: 'Bacon', price: 1.30),
        Addone(name: 'Avocado', price: 2.65),
      ],
    ),
    Food(
      name: 'Classic CheeseBurger',
      description:
          'A juicy beef party melted cheddar , lettuce , tomato , and a hint of onion and pickle.',
      price: 13.20,
      imagePath: 'assets/images/burges/burger7.png',
      category: FoodCategory.burgers,
      avalebleAddones: [
        Addone(name: 'Extra Cheeses', price: 2.99),
        Addone(name: 'Bacon', price: 2.49),
        Addone(name: 'Avocado', price: 3.99),
      ],
    ),

    // salads
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 7.99,
      imagePath: 'assets/images/salads/salad1.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.99),
        Addone(name: 'Anchovies', price: 1.45),
        Addone(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 8.99,
      imagePath: 'assets/images/salads/salad2.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.89),
        Addone(name: 'Anchovies', price: 1.43),
        Addone(name: 'Extra Parmesan', price: 1.69),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 8.25,
      imagePath: 'assets/images/salads/salad3.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.84),
        Addone(name: 'Anchovies', price: 1.57),
        Addone(name: 'Extra Parmesan', price: 2.10),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 5.85,
      imagePath: 'assets/images/salads/salad4.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.49),
        Addone(name: 'Anchovies', price: 0.86),
        Addone(name: 'Extra Parmesan', price: 2.91),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 8.56,
      imagePath: 'assets/images/salads/salad5.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 1.99),
        Addone(name: 'Anchovies', price: 1.55),
        Addone(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 9.99,
      imagePath: 'assets/images/salads/salad6.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.99),
        Addone(name: 'Anchovies', price: 1.62),
        Addone(name: 'Extra Parmesan', price: 1.75),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Cerips romantic luttuce , parmesan chees , croutons , and caesar dressing. ',
      price: 11.56,
      imagePath: 'assets/images/salads/salad7.png',
      category: FoodCategory.salads,
      avalebleAddones: [
        Addone(name: 'Grilled chicken', price: 0.99),
        Addone(name: 'Anchovies', price: 1.45),
        Addone(name: 'Extra Parmesan', price: 1.99),
      ],
    ),

    // Sides
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 4.99,
      imagePath: 'assets/images/sides/side1.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 5.99,
      imagePath: 'assets/images/sides/side2.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 5.45,
      imagePath: 'assets/images/sides/side3.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 4.58,
      imagePath: 'assets/images/sides/side4.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 6.00,
      imagePath: 'assets/images/sides/side5.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 4.52,
      imagePath: 'assets/images/sides/side6.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fiers',
      description: 'Cerips Sweet Potato Fiers with a touch of salt ',
      price: 6.50,
      imagePath: 'assets/images/sides/side7.png',
      category: FoodCategory.sides,
      avalebleAddones: [
        Addone(name: 'Cheese Saus', price: 0.99),
        Addone(name: 'Truffle oil', price: 1.45),
        Addone(name: 'Cajun Spice', price: 1.99),
      ],
    ),

    // desserts
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert1.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert2.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert3.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert4.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert5.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert6.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Classic Apple Pie with a flacky crust and a cinammon-spiced apple filling. ',
      price: 6.50,
      imagePath: 'assets/images/desserts/dessert7.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Caramel Sauce', price: 0.99),
        Addone(name: 'Vanilla Ice Cream', price: 1.45),
        Addone(name: 'Cinammon Spice', price: 1.99),
      ],
    ),

    // Drinks
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink1.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink2.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink3.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink4.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink5.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink6.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description:
          'Refreshing lemonade made with real lemons and a touch of sweetnes. ',
      price: 6.50,
      imagePath: 'assets/images/drinks/drink7.png',
      category: FoodCategory.desserts,
      avalebleAddones: [
        Addone(name: 'Strawberry Flavor', price: 0.99),
        Addone(name: 'mint Leaves', price: 1.45),
        Addone(name: 'Ginger Zest', price: 1.99),
      ],
    ),
  ];
}
