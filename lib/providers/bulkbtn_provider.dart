import 'package:crockery/api/api_screen.dart';
import 'package:flutter/cupertino.dart';

import '../models/bulkbuttonmodel.dart';

class BulkButtonScreenProvider with ChangeNotifier{
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;

  // GETTER & SETTER
  List<BulkData>? _bulkProvider = [];
  List<BulkData>? get bulkProvider => _bulkProvider;

  Future<void> getAllBulkPageData() async{
    bulkProvider?.clear();
    isLoading = true;
    notifyListeners();

    try{
      final response = await apiScreen.getBulkProductList();
      print("Response $response");
      _bulkProvider = response;
    }catch(error){
      print('Error occurred while fetching data: $error');
    }
    isLoading = false;
    notifyListeners();
  }
}