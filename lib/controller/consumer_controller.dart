import 'dart:io';

import '../helper/clear_screen.dart';
import '../models/products.dart';

class ConsumerController {
  ProductList productList;

  ConsumerController({required this.productList});
  void showProduct() {
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

    print("\n\nPress Enter to go back...");

    stdin.readLineSync();
    clearSreen();
  }

  void showCartList() {}

  void addCartList() {}
}
