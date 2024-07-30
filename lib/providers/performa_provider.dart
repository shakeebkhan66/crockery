import 'package:flutter/material.dart';
import '../api/api_screen.dart';
import '../models/performa.dart';


class PerformaProvider with ChangeNotifier {
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;

  // GETTER & SETTER
  List<Data>? _performaProvider = [];
  List<Data>? get performaProvider => _performaProvider;

  Future<void> getAllPerformaList() async {
    performaProvider?.clear();
    isLoading = true;
    notifyListeners();

    try {
      final response = await apiScreen.getPerformaList();
      print("Response $response");
      _performaProvider = response;
    } catch (error) {
      print('Error occurred while fetching data: $error');
    }

    isLoading = false;
    notifyListeners();
  }
}
