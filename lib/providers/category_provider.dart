import 'package:flutter/cupertino.dart';
import '../api/api_screen.dart';
import '../models/categoriesmodel.dart';


class CategoryProvider with ChangeNotifier {
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;
  List<CategoryData>? _categoryProvider = [];
  List<CategoryData>? get categoryProvider => _categoryProvider;

  Future<void> getAllcategoryList() async {
    categoryProvider?.clear();
    isLoading = true;
    notifyListeners();

    try {
      final response = await apiScreen.getCategoryList();
      print("Response $response");
      _categoryProvider = response;
    } catch (error) {
      print('Error occurred while fetching data: $error');
    }

    isLoading = false;
    notifyListeners();
  }
}
