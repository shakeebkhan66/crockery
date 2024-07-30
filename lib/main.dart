import 'package:crockery/auth/login_screen.dart';
import 'package:crockery/providers/banner_provider.dart';
import 'package:crockery/providers/bulkbtn_provider.dart';
import 'package:crockery/providers/category_provider.dart';
import 'package:crockery/providers/offer-provider.dart';
import 'package:crockery/providers/performa_provider.dart';
import 'package:crockery/providers/product_provider.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PerformaProvider>(
            create: (context) => PerformaProvider()),
        ChangeNotifierProvider<OfferProvider>(
            create: (context) => OfferProvider()),
        ChangeNotifierProvider<BannerProvider>(
            create: (context) => BannerProvider()),
        ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider()),
        ChangeNotifierProvider<ProductListProvider>(
            create: (context) => ProductListProvider()),
        ChangeNotifierProvider<BulkButtonScreenProvider>(
            create: (context) => BulkButtonScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: homeScreenBackgroundColor,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
