import 'dart:io';
import 'package:terminal_mobileshop/models/products.dart';

import '../helper/clear_screen.dart';

// Note: The productList is empty because a new instance of the ProductList class
// is created every time the addProduct or showProduct method is called.
// To solve this, create only one instance of the ProductList class and pass it to
// the controller methods.
class SellerController {
  ProductList productList;

  SellerController({required this.productList});

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

  void addProduct() {
    clearSreen();
    print("Add Product");
    stdout.write("Product name : ");
    String name = stdin.readLineSync()!;

    stdout.write("Product stock :");
    try {
      int stock = int.parse(stdin.readLineSync()!);
      Product product = Product(name, stock);
      productList.productList.add(product);
      clearSreen();
      print("Product Added \n");
    } catch (e) {
      clearSreen();
      print("Stock Must be a Number !!\n");
    }
  }

  void deleteProduct() {
    clearSreen();
    if (productList.productList.isNotEmpty) {
      print("Delete Product");
      stdout.write("Select product number to delete : ");
      String index = stdin.readLineSync()!;
      try {
        productList.productList.removeAt(int.parse(index) - 1);
        clearSreen();
        print("Product Deleted\n");
      } catch (e) {
        clearSreen();
        print("Invalid product number !!\n");
      }
    } else {
      print("There is no product to delete :(\n");
    }
  }
}
