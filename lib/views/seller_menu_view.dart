import 'dart:io';
import 'package:terminal_mobileshop/controller/seller_controller.dart';
import 'package:terminal_mobileshop/helper/clear_screen.dart';
import '../models/products.dart';

class SellerMenuView {
  ProductList productList;
  SellerMenuView({required this.productList});

  void displaySellerMenu() {
    SellerController _sellerController =
        SellerController(productList: productList);

    bool isExit = false;

    clearSreen();

    do {
      print("Welcome to Seller menu");
      print("Select Menu");
      print("[1]Display Products");
      print("[2]Add Product");
      print("[3]Delete Product");
      print("[4]Main Menu");

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
