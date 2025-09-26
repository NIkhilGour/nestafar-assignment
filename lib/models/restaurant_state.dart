import 'package:equatable/equatable.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';

class RestaurantState extends Equatable {
  final List<Food> menu;
  final List<CartItem> cart;
  final String deliveryAddress;

  const RestaurantState({
    this.menu = const [],
    this.cart = const [],
    this.deliveryAddress = "1/238 Virat Khand Lucknow",
  });

  RestaurantState copyWith({
    List<Food>? menu,
    List<CartItem>? cart,
    String? deliveryAddress,
  }) {
    return RestaurantState(
      menu: menu ?? this.menu,
      cart: cart ?? this.cart,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
    );
  }

  @override
  List<Object> get props => [menu, cart, deliveryAddress];
}
