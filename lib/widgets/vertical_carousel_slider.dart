import 'package:carousel_slider/carousel_slider.dart';
import 'package:crockery/providers/banner_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class VerticalSliderDemo extends StatefulWidget {
  const VerticalSliderDemo({super.key});

  @override
  State<VerticalSliderDemo> createState() => _VerticalSliderDemoState();
}

class _VerticalSliderDemoState extends State<VerticalSliderDemo> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<BannerProvider>(context, listen: false).getAllBannersList();
    });
  }


  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "assets/images/ofrbanner.png",
      "assets/images/ofrbanner.png",
      "assets/images/ofrbanner.png",
    ];

    return Consumer<BannerProvider>(
      builder: (context, value, child){
        if(value.isLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final banners = value.bannerProvider;
        return CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
          items: banners?.map((item) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.network(
                  item.bannerImages!,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
