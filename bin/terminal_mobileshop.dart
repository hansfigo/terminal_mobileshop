import 'package:terminal_mobileshop/helper/clear_screen.dart';
import 'package:terminal_mobileshop/models/products.dart';
import 'package:terminal_mobileshop/views/consumer_menu_view.dart';
import 'package:terminal_mobileshop/views/main_menu.dart';
import 'package:terminal_mobileshop/views/seller_menu_view.dart';

void main(List<String> arguments) {
  ProductList productList = ProductList();
  bool validInput = true;
  clearSreen();

  do {
    MainMenuView mainMenuView = MainMenuView();
    String menu = mainMenuView.displayMainMenu();

    switch (menu) {
      case "1":
        ConsumerMenuView consumerMenuView =
            ConsumerMenuView(productList: productList);
        consumerMenuView.displayConsumerMenu();
        break;
      case "2":
        SellerMenuView sellerMenuView =
            SellerMenuView(productList: productList);
        sellerMenuView.displaySellerMenu();
        break;
      default:
        clearSreen();
        print("Invalid Input");
        break;
    }
  } while (validInput);
}
