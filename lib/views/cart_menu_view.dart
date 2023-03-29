import 'dart:io';

import 'package:terminal_mobileshop/controller/cart_controller.dart';
import 'package:terminal_mobileshop/helper/clear_screen.dart';

import '../models/cart.dart';
import '../models/products.dart';

class CartMenuView {
  CartList cardList;
  ProductList productList;

  CartMenuView({required this.cardList, required this.productList});
  void displayCartMenu() {
    CartController _cartController =
        CartController(cartList: cardList, productList: productList);
    clearSreen();
    _cartController.showCartList();
    print("Press r to remove");
    print("Press c to checkout");
    print("Press q to go back");

    String input = stdin.readLineSync()!;

    switch (input) {
      case "r":
        _cartController.removeCartItem();
        break;
      case "c":
        _cartController.checkout();
        break;
      case "q":
        clearSreen();
        break;
      default:
    }
  }
}
