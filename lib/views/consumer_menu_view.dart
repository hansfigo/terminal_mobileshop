import 'dart:io';
import 'package:terminal_mobileshop/models/products.dart';

import '../helper/clear_screen.dart';

class ConsumerMenuView {
  ProductList productList;

  ConsumerMenuView({required this.productList});

  void displayConsumerMenu() {
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
          _sellerController.showProduct();
          break;
        case "2":
          _sellerController.addProduct();
          break;
        case "3":
          _sellerController.deleteProduct();
          break;
        case "4":
          isExit = true;
          break;
        default:
          clearSreen();
          print("invalid Input");
      }
    } while (!isExit);
  }
}
