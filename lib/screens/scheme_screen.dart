import 'package:crockery/screens/invoice_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/mycolors.dart';
import '../widgets/scheme_screen_container.dart';

class SchemeScreen extends StatelessWidget {
  const SchemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff1B3081),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
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
                        margin: const EdgeInsets.only(bottom: 10.0),
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
                        top: 130.0, left: 35.0, right: 35.0),
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
                        hintText: 'Search..',
                        // Hint text
                        hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.6), fontSize: 15.0),
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InvoiceScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  "Schemes",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SchemeScreenContainerBox(
              text: 'Transact more than 100000/- & get free DUBAI trip',
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 15.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/ticket.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Validity  ( From 1st Oct -- To 30 Nov )",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SchemeScreenContainerBox(
              text: 'Transact more than 100000/- & get free DUBAI trip',
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 15.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/ticket.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Validity  ( From 1st Oct -- To 30 Nov )",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
