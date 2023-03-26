class Product {
  String? name;
  int? stock;

  Product(String name, int stock) {
    this.name = name;
    this.stock = stock;
  }
}

class ProductList {
  List<Product> productList = [];

  void showProduct() {
    if (productList.isEmpty) {
      print("No Product added yet");
    } else {
      for (var element in productList) {
        print(element);
      }
    }
  }
}
