import 'dart:io';
import 'package:terminal_mobileshop/controller/cart_controller.dart';
import 'package:terminal_mobileshop/models/cart.dart';
import 'package:terminal_mobileshop/models/products.dart';
import '../controller/consumer_controller.dart';
import '../helper/clear_screen.dart';

class ConsumerMenuView {
  ProductList productList;
  CartList cartList;

  ConsumerMenuView({required this.productList, required this.cartList});

  void displayConsumerMenu() {
    ConsumerController _consumerController =
        ConsumerController(productList: productList, cartList: cartList);
    CartController _cartController =
        CartController(cartList: cartList, productList: productList);
    bool isExit = false;

    clearSreen();
    do {
      print("Welcome to Guest menu");
      print("Select Menu");
      print("[1]Display Products");
      print("[2]Cart");
      print("[3]Main Menu");

      String menu = stdin.readLineSync()!;

      clearSreen();
      switch (menu) {
        case "1":
          _consumerController.showProduct();
          break;
        case "2":
          _cartController.displayCartMenu();
          break;
        case "3":
          isExit = true;
          break;
        default:
          clearSreen();
          print("invalid Input");
      }
    } while (!isExit);
  }
}
