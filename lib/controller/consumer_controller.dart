import 'dart:io';

import 'package:terminal_mobileshop/controller/cart_controller.dart';

import '../helper/clear_screen.dart';
import '../models/cart.dart';
import '../models/products.dart';

class ConsumerController {
  final ProductList productList;
  final CartList cartList;

  ConsumerController({required this.productList, required this.cartList});

  void showProduct() {
    CartController _cartController =
        CartController(cartList: cartList, productList: productList);

    if (productList.productList.isNotEmpty) {
      print("Product List : ");
      int i = 1;
      for (var element in productList.productList) {
        print("$i. Name : ${element.name}");
        print("   Stock : ${element.stock}\n");
        i++;
      }
    } else {
      print("There is no Product :(\n");
    }

    print("\n\nPress c to add item to cart");
    print("Press q to go back...");

    String input = stdin.readLineSync()!;

    if (input == "c") {
      _cartController.addCartItem();
    } else if (input == "q") {
      clearSreen();
    }else{
      clearSreen();
      print("\nInvalid Input");
    }
  }
}
