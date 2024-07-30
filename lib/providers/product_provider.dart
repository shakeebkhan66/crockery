import 'package:flutter/cupertino.dart';
import '../api/api_screen.dart';
import '../models/productlistmodel.dart';


class ProductListProvider with ChangeNotifier {
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;
  List<ProductData>? _productProvider = [];
  List<ProductData>? get productProvider => _productProvider;

  Future<void> getAllProductList() async {
    productProvider?.clear();
    isLoading = true;
    notifyListeners();

    try {
      final response = await apiScreen.getProductList();
      print("Response $response");
      _productProvider = response;
    } catch (error) {
      print('Error occurred while fetching data: $error');
    }

    isLoading = false;
    notifyListeners();
  }
}
