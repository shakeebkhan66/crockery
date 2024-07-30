import 'package:crockery/screens/cargorecipt_screen.dart';
import 'package:crockery/screens/docket_screen.dart';
import 'package:crockery/screens/invoice_receipt.dart';
import 'package:crockery/screens/performa_screen.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';
import 'offer_screen.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 215.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff1B3081),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        ),
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
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 145.0, left: 35.0, right: 35.0),
                    // Adjust the top margin as needed
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius:
                          BorderRadius.circular(12.0), // Circular border radius
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12.0),
                        // Padding around the input content
                        hintText: 'Enter Product name or model no',
                        // Hint text
                        hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 13.0),
                        // Hint text color

                        // Leading icon (search icon)
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey
                              .withOpacity(0.6), // Change the color as needed
                        ),

                        // Trailing icon (vertical menu icon)
                        suffixIcon: Image.asset("assets/images/menu.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OfferScreen()));
              },
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color(0xff1B3081)),
                child: const Center(
                    child: Text(
                  'My Documents',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PerformaScreen(),),);
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff1B3081),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(0.1, 0.0),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Proforma',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const InvoiceReceiptScreen(),),);
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff1B3081),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(0.1, 0.0),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Invoice No.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CargoReciptScreen(),),);
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff1B3081),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(0.1, 0.0),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'LR/CR',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DocketScreen(),),);
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff1B3081),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(0.1, 0.0),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Docket',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
