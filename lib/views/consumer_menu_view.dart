import 'dart:io';
import 'package:terminal_mobileshop/models/cart.dart';
import 'package:terminal_mobileshop/models/products.dart';
import '../controller/consumer_controller.dart';
import '../helper/clear_screen.dart';

class ConsumerMenuView {
  ProductList productList;
  CartList cartList;

  ConsumerMenuView({required this.productList, required this.cartList});

  void displayConsumerMenu() {
    ConsumerController _consumerController = ConsumerController(productList: productList);

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
          // _consumerController.addProduct();
          break;
        case "3":
          // _consumerController.deleteProduct();
          isExit = true;
          break;
        case "4":
          break;
        default:
          clearSreen();
          print("invalid Input");
      }
    } while (!isExit);
  }
}
