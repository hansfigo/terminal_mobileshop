import 'dart:io';
import 'package:terminal_mobileshop/helper/empty_handle.dart';
import 'package:terminal_mobileshop/models/cart.dart';
import '../helper/clear_screen.dart';
import '../models/products.dart';
import '../views/cart_menu_view.dart';

class CartController {
  CartList cartList;
  ProductList productList;

  CartController({required this.cartList, required this.productList});

  void showCartList() {
    print("Cart List : ");
    int i = 1;
    for (var element in cartList.cartList) {
      print("$i. Name : ${element.product?.name}");
      print("   quantitiy : ${element.quantitity}\n");
      i++;
    }
  }

  void addCartItem() {
    stdout.write("Choose Product to add : ");
    String index = stdin.readLineSync()!;
    try {
      Product product = productList.productList[int.parse(index) - 1];

      try {
        stdout.write("How much you wanna add : ");
        int quantitity = int.parse(stdin.readLineSync()!);

        if (product.stock! >= quantitity) {
          CartItem cartItem =
              CartItem(product: product, quantitity: quantitity);
          cartList.cartList.add(cartItem);
          clearSreen();
          print("\nProduct Added \n");
        } else {
          clearSreen();
          print("\nStock g cukup !!");
        }
      } catch (e) {
        clearSreen();
        print("quantitity Must be a Number !!\n");
      }
    } catch (e) {
      clearSreen();
      print("Invalid Product !!\n");
    }
  }

  void removeCartItem() {
    clearSreen();
    print("Remove Product");
    print("Choose item number to remove");

    String item = stdin.readLineSync()!;

    try {
      cartList.cartList.removeAt(int.parse(item) - 1);
      clearSreen();

      print("Item Removed");
    } catch (e) {
      clearSreen();

      print("Invalid Item !!");
    }
  }

  void checkout() {
    clearSreen();
    print("Checkout");
    stdout.write("Do you wanna checkout ? (y/n)");
    String input = stdin.readLineSync()!;

    if (input == 'y' || input == "Y") {
      for (var product in productList.productList) {
        for (var cart in cartList.cartList) {
          if (cart.product?.name == product.name) {
              product.stock = (product.stock! - cart.quantitity!);
          }
        }
      }
      cartList.cartList.clear();
      clearSreen();
      print("Checkout Suceess");
    } else {
      clearSreen();
    }
  }

  void displayCartMenu() {
    CartMenuView cartMenuView =
        CartMenuView(cardList: cartList, productList: productList);
    if (cartList.cartList.isNotEmpty) {
      cartMenuView.displayCartMenu();
    } else {
      emptyHandle("No item in cart");
    }
  }
}
