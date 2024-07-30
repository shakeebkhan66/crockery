import 'package:crockery/api/api_screen.dart';
import 'package:flutter/cupertino.dart';
import '../models/bannermodel.dart';


class BannerProvider with ChangeNotifier{
  ApiScreen apiScreen = ApiScreen();
  bool isLoading = false;

  // GETTER & SETTER
  List<BannerData>? _bannerProvider = [];
  List<BannerData>? get bannerProvider => _bannerProvider;

  Future<void> getAllBannersList() async{
    bannerProvider?.clear();
    isLoading = true;
    notifyListeners();

    try{
      final response = await apiScreen.getBannerList();
      print("Response $response");
      _bannerProvider = response;
    }catch(error){
      print('Error occurred while fetching data: $error');
    }
    isLoading = false;
    notifyListeners();
  }

}