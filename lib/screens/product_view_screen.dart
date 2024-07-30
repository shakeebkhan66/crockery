import 'package:flutter/material.dart';
import '../widgets/vertical_carousel_slider.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  String? dropdownValue;
  String? dropdownltrValue;

  final List<String> imgList = [
    "assets/images/ofrbanner.png",
    "assets/images/ofrbanner.png",
    "assets/images/ofrbanner.png",
  ];

  var items = [
    'Royal Goods co',
    'Samar Enterprises',
    'Radhika Enterprises',
    'Sam & Sons Co',
    'Made In India co',
    'Indian Enterprises',
    'Hi-Tech Corporation',
    'SK Industries'
  ];

  var item = [
    '1 ltr',
    '5 ltr',
    '10 ltr',
    '20 ltr',
    '30 ltr',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff1B3081),
                      size: 25,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(Icons.notifications_none_sharp,
                          size: 35, color: Color(0xff1B3081)),
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
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const VerticalSliderDemo(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Maxfresh Hotpot- Royal',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            const Divider(
              thickness: 1,
              indent: 100,
              endIndent: 100,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              width: 310,
              // margin: const EdgeInsets.only(top: 10.0),
              decoration: const BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("assets/images/product.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),

      // TODO Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: 285,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: Color(0xff1B3081),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: const Center(
                        child: Text(
                      'MRP: 999',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff23233B),
                      ),
                    ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 210,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        focusColor: Colors.blue,
                        hint: const Text('Select Delivery Address', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff23233B),
                        ),),
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Select Size:',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                DropdownButton<String>(
                  dropdownColor: const Color(0xff1B3081),
                  hint: const Text(
                    'Select size',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  value: dropdownltrValue,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                  items: item.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownltrValue = newValue!;
                    });
                  },
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Quantity:',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'MOQ:',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  '10',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total Quantity:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  '20,000',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  '20,000',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    backgroundColor: Colors.white,
                    fixedSize: const Size(180, 7)),
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1B3081)),
                )),
          ],
        ),
      ),
    );
  }
}
