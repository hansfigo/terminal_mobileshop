import 'dart:io';

class MainMenuView {
  String displayMainMenu() {
    const String asccii = """ 
      _               _           _       
     | |             | |         | |      
     | |__  _ __  ___| |__  _   _| |_ ___ 
     | '_ \| '_ \|_  / '_ \| | | | __/ _ \
     | | | | | | |/ /| |_) | |_| | ||  __/
     |_| |_|_| |_/___|_.__/ \__, |\__\___|
                             __/ |        
       Created by :     
    """;

    print(asccii);
    print("Welcome to MobileShop");
    print("Choose your menu");
    print("[1]Consumer");
    print("[2]Seller");

    String menu = stdin.readLineSync()!;

    return menu;
  }
}
