import 'package:crockery/screens/invoice_screen.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'mycolors.dart';

class CustomContainerCard extends StatelessWidget {
  const CustomContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: orderPopupScrenCardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
              color: orderPopupScrenCardShadowColor,
              offset: Offset(0.1, 0.0),
              blurRadius: 5,
              spreadRadius: 0.5)
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Max Fresh Order_zdhhm6v26",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  "02Aug,2023",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Total order amount",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "200,000",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Order Product Quantity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "1000",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Order No.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "854645",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Date",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "2/8/2023",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Payment Mode",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "Credit/ Cash",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const InvoiceScreen(),),);
            },
            child: const CustomButton(
              text: "View Invoice",
              containerHeight: 35.0,
              margin: 20,
              textSize: 18.0,
              borderRadius: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
