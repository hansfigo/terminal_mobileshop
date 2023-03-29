import 'package:terminal_mobileshop/models/products.dart';

class CartItem{
  Product? product;
  int? quantitity ;

  CartItem({required this.product, required this.quantitity});

}

class CartList{
  List<CartItem> cartList = [];
}