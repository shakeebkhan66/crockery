import 'package:crockery/widgets/custom_container_button.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';
import '../widgets/category_scroller_screen.dart';
import '../widgets/custom_container_grid.dart';
import '../widgets/vertical_carousel_slider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productPageBackgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 55,
                  width: 55,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Icon(Icons.arrow_back, size: 35, color: iconColor),
                ),
              ),
              Container(
                height: 60,
                width: 120,
                margin: const EdgeInsets.only(top: 10.0, left: 20, bottom: 40),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/maxfresh.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Icon(Icons.search, size: 35, color: iconColor),
              ),
              Stack(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Icon(Icons.notifications_none_sharp,
                        size: 35, color: iconColor),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Text(
                        '3', // Replace with your notification number
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const VerticalSliderDemo(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainerButton(
                text: "Total Order Value",
                width: 190,
                radius: 0.0,
                fontSize: 18.0,
                weight: FontWeight.w400,
              ),
              CustomContainerButton(
                text: "Total Quantity",
                width: 190,
                radius: 0.0,
                fontSize: 18.0,
                weight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const CategoryScroller(),
          const ContainerGrid(),
        ],
      ),
    );
  }
}


