import 'dart:convert';
import 'dart:ui';
import 'package:crockery/models/categoriesmodel.dart';
import 'package:crockery/models/offermodel.dart';
import 'package:crockery/models/performa.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/bannermodel.dart';
import '../models/bulkbuttonmodel.dart';
import '../models/productlistmodel.dart';

class ApiScreen {

  // TODO LIST OF GET PERFORMA MODEL CLASS
  List<Data> performaList = [];

  // TODO LIST OF GET OFFER MODEL CLASS
  List<OfferData> offerList = [];

  // TODO LIST OF BANNER
  List<BannerData> bannerList = [];

  // TODO LIST OF BULK BUTTON PRODUCTS
  List<BulkData> bulkProductList = [];

  // TODO LIST OF CATEGORIES
  List<CategoryData> categoryList = [];

  // TODO LIST OF PRODUCTS
  List<ProductData> productList = [];





  // TODO GET PERFORMA LIST
  Future<List<Data>?> getPerformaList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/proformalist'),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Data $data");
        for (var i in data["data"]) {
          performaList.add(Data.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "Performa list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return performaList;
      } else {
        print("Failed to get performa list");
        return performaList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return performaList;
    }
  }

  // TODO GET OFFER LIST
  Future<List<OfferData>?> getOfferList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/offerlist'),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Data $data");
        for (var i in data["data"]) {
          offerList.add(OfferData.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "Offer list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return offerList;
      } else {
        print("Failed to get Offer list");
        return offerList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return offerList;
    }
  }

  // TODO GET BANNER LIST
  Future<List<BannerData>?> getBannerList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/bannerlist'),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Data $data");
        for (var i in data["data"]) {
          bannerList.add(BannerData.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "Banner list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return bannerList;
      } else {
        print("Failed to get banner list");
        return bannerList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return bannerList;
    }
  }

  // TODO GET BULK PRODUCT LIST SCREEN
  Future<List<BulkData>?> getBulkProductList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/bulkproductlist'),
      );

      if(response.statusCode == 200){
        var data = jsonDecode(response.body);
        print("Data $data");
        for(var i in data["data"]){
          bulkProductList.add(BulkData.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "Bulk Product list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return bulkProductList;
      }else {
        print("Failed to get bulk product list");
        return bulkProductList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return bulkProductList;
    }
  }

  // TODO Get Category List
  Future<List<CategoryData>?> getCategoryList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/categorylist'),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Data $data");
        for (var i in data["data"]) {
          categoryList.add(CategoryData.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "category list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return categoryList;
      } else {
        print("Failed to get category list");
        return categoryList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return categoryList;
    }
  }

  // TODO Get Product List
  Future<List<ProductData>?> getProductList() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://betaprojects.webariansoftwares.com/figma/api/admin/productlist'),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Data $data");
        for (var i in data["data"]) {
          productList.add(ProductData.fromJson(i));
        }
        Fluttertoast.showToast(
          msg: "product list get successfully",
          backgroundColor: const Color(0xff008000),
          textColor: const Color(0xffffffff),
        );
        return productList;
      } else {
        print("Failed to get product list");
        return productList;
      }
    } catch (e) {
      print("Error occurred $e");
      Fluttertoast.showToast(msg: "Failed ${e.toString()}");
      return productList;
    }
  }
}
