import 'package:crockery/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_card_container.dart';
import '../widgets/mycolors.dart';

class OrderButtonPopupScreen extends StatelessWidget {
  const OrderButtonPopupScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 55,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.1, 0.0),
                        blurRadius: 5,
                        spreadRadius: 0.5)
                  ],
                ),
                child: const Icon(Icons.arrow_back, size: 30, color: iconColor),
              ),
              Container(
                height: 60,
                width: 120,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/maxfresh.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.1, 0.0),
                            blurRadius: 5,
                            spreadRadius: 0.5)
                      ],
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
          const SizedBox(
            height: 30.0,
          ),
          const CustomButton(
            text: "Order", containerHeight: 55.0,
            margin: 20, textSize: 20.0
            , borderRadius: 8.0,),
          Expanded(
            child: ListView(
              children: const [
                CustomContainerCard(),
                SizedBox(height: 20.0),
                CustomContainerCard(),
                SizedBox(height: 20.0,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
