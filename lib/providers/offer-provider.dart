

import 'package:flutter/cupertino.dart';

import '../api/api_screen.dart';
import '../models/offermodel.dart';

class OfferProvider with ChangeNotifier {
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;

  // GETTER & SETTER
  List<OfferData>? _offerProvider = [];
  List<OfferData>? get offerProvider => _offerProvider;

  Future<void> getAllOfferList() async {
    offerProvider?.clear();
    isLoading = true;
    notifyListeners();

    try {
      final response = await apiScreen.getOfferList();
      print("Response $response");
      _offerProvider = response;
    } catch (error) {
      print('Error occurred while fetching data: $error');
    }

    isLoading = false;
    notifyListeners();
  }
}
