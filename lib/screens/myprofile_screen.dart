import 'package:crockery/screens/deliveryaddress_screen.dart';
import 'package:crockery/screens/offer_screen.dart';
import 'package:crockery/screens/order_btn_popup_screen.dart';
import 'package:crockery/screens/outstandingbill_screen.dart';
import 'package:crockery/screens/profile_screen.dart';
import 'package:crockery/screens/scheme_screen.dart';
import 'package:crockery/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import 'document_screen.dart';

class MYProfileScreen extends StatelessWidget {
  const MYProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(215.0),
        child: CustomAppBar(),
      ),
      drawer: Profile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: 215.0,
            //       decoration: const BoxDecoration(
            //         color: Color(0xff1B3081),
            //         borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(40.0),
            //           bottomRight: Radius.circular(40.0),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 50.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: const Icon(
            //               Icons.menu,
            //               color: Colors.white,
            //               size: 40,
            //             ),
            //           ),
            //           Container(
            //             height: 60,
            //             width: 120,
            //             margin: const EdgeInsets.only(top: 10.0),
            //             decoration: const BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage("assets/images/maxfresh.png"),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //           Stack(
            //             children: [
            //               Container(
            //                 height: 40,
            //                 width: 40,
            //                 alignment: Alignment.center,
            //                 margin: const EdgeInsets.only(top: 10.0),
            //                 decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.circular(12.0),
            //                 ),
            //                 child: const Icon(Icons.notifications_none_sharp,
            //                     size: 35, color: Colors.blue),
            //               ),
            //               Positioned(
            //                 right: 0,
            //                 top: 0,
            //                 child: Container(
            //                   padding: const EdgeInsets.all(4),
            //                   decoration: const BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Colors.red,
            //                   ),
            //                   child: const Text(
            //                     '3', // Replace with your notification number
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 12,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //     Align(
            //       alignment: Alignment.topCenter,
            //       child: Container(
            //         margin: const EdgeInsets.only(
            //             top: 145.0, left: 35.0, right: 35.0),
            //         // Adjust the top margin as needed
            //         decoration: BoxDecoration(
            //           color: Colors.white, // Background color
            //           borderRadius:
            //               BorderRadius.circular(12.0), // Circular border radius
            //         ),
            //         child: TextFormField(
            //           decoration: InputDecoration(
            //             contentPadding: const EdgeInsets.all(12.0),
            //             // Padding around the input content
            //             hintText: 'Search..',
            //             // Hint text
            //             hintStyle: TextStyle(
            //                 color: Colors.grey.withOpacity(0.6),
            //                 fontSize: 17.0),
            //             // Hint text color
            //
            //             // Leading icon (search icon)
            //             prefixIcon: Icon(
            //               Icons.search,
            //               color: Colors.grey
            //                   .withOpacity(0.6), // Change the color as needed
            //             ),
            //
            //             // Trailing icon (vertical menu icon)
            //             suffixIcon: Image.asset("assets/images/menu.png"),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Hi , Laxmi Corporation',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OfferScreen(),
                        ),
                      );
                    },
                    child: const Center(
                        child: Text(
                      'Diwali Bumper Dhamaka',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 9,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Business Till \nDate',
                          style: TextStyle(
                              color: Color(0xff23233B),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '200,000',
                          style: TextStyle(
                              color: Color(0xff23233B),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OutStandingScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Outstanding \nBills',
                            style: TextStyle(
                                color: Color(0xff23233B),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '500,000',
                            style: TextStyle(
                                color: Color(0xff23233B),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()),);
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Catalogue \nOrder',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SchemeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Schemes',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OfferScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Offers',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderButtonPopupScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'My Order',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DocumentScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'My Document',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryAddScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff1B3081),
                            offset: Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      'Delivery \nAddress',
                      style: TextStyle(
                          color: Color(0xff23233B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trade Discount',
                          style: TextStyle(
                              color: Color(0xff23233B),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3%',
                          style: TextStyle(
                              color: Color(0xff23233B),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
