// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'food_model.dart';

class CartItem {
  final Food food;
  final List<Addone> selectAddone;
  int quantity;
  CartItem({
    required this.food,
    required this.selectAddone,
    this.quantity = 1,
  });

  double get totalPrice {
    double addOnePrice =
        selectAddone.fold(0, (sum, Addone) => sum + Addone.price);
    return (food.price + addOnePrice) * quantity;
  }
}
