import 'package:crockery/screens/profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class SalesmanScreen extends StatefulWidget {
  const SalesmanScreen({super.key});

  @override
  State<SalesmanScreen> createState() => _SalesmanScreenState();
}

class _SalesmanScreenState extends State<SalesmanScreen> {
  String? dropdownValue;
  String? popupValue;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      drawer: const Profile(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(215.0),
        child: CustomAppBar(),
      ),
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
            //             hintText: 'Enter Product name or model no',
            //             // Hint text
            //             hintStyle: TextStyle(
            //                 color: Colors.grey.withOpacity(0.6),
            //                 fontSize: 13.0),
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
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Hii mr samar...',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff23233B),
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
                      hint: const Text('Select Vendor For Order'),
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
            const SizedBox(
              height: 25.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile()));
              },
              child: Container(
                height: 108,
                width: 370,
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
                  padding: EdgeInsets.only(top: 14, bottom: 14),
                  child: Column(
                    children: [
                      Center(
                          child: Text('Current Month Order value',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff23233B),
                              ))),
                      Center(
                          child: Text('200,000',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff23233B),
                              ))),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Order Quantity',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '50,000',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-1, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Order Value',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 336,
              width: 370,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      width: 370,
                      decoration: const BoxDecoration(
                        color: Color(0xff1B3081),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff1B3081),
                              offset: Offset(-2, 2),
                              blurRadius: 2,
                              spreadRadius: 0.5)
                        ],
                      ),
                      child: const Center(
                          child: Text('My Schedules',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ))),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  content: SizedBox(
                                    height: 102,
                                    width: 322,
                                    child: Column(
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Sep',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '2023',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xff1B3081),
                                              ),
                                              child: const Center(
                                                  child: Text(
                                                '27',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                              )),
                                            ),
                                            const Text(
                                              '28',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Text(
                                              '29',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          height: 2,
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Samar Enterprises',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '4 PM',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 28,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff1B3081),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff1B3081),
                                    offset: Offset(-2, 2),
                                    blurRadius: 2,
                                    spreadRadius: 0.5)
                              ],
                            ),
                            child: const Center(
                                child: Text('My Meetings',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  content: SizedBox(
                                    height: 128,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 150,
                                              padding: const EdgeInsets.only(left: 8.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff1B3081),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      color: Color(0xff1B3081),
                                                      offset: Offset(-2, 2),
                                                      blurRadius: 2,
                                                      spreadRadius: 0.5)
                                                ],
                                              ),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton<String>(
                                                  dropdownColor:
                                                      const Color(0xff1B3081),
                                                  hint: const Text(
                                                    'Company Name',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  value: popupValue,
                                                  icon: const Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Colors.white,
                                                  ),
                                                  items:
                                                      items.map((String item) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      popupValue = newValue!;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                _selectDate(context);
                                              },
                                              child: Container(
                                                height: 30,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color:
                                                      const Color(0xff1B3081),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        color:
                                                            Color(0xff1B3081),
                                                        offset: Offset(-2, 2),
                                                        blurRadius: 2,
                                                        spreadRadius: 0.5)
                                                  ],
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Center(
                                                        child: Text(
                                                      'Date/Time',
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                    )),
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      size: 12,
                                                      color: Colors.white,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Samar Enterprises',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '12 Aug 2023',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '4 PM',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          height: 2,
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 200),
                                          height: 30,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color(0xff1B3081),
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
                                            'Submit',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 28,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff1B3081),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff1B3081),
                                    offset: Offset(-2, 2),
                                    blurRadius: 2,
                                    spreadRadius: 0.5)
                              ],
                            ),
                            child: const Center(
                                child: Text('Schedule Meeting',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _selectDate(BuildContext context) async {
  DateTime selectedDate = DateTime.now();
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  if (picked != null && picked != selectedDate) {
    if (kDebugMode) {
      print('Date selected: ${picked.toString()}');
    }
  }
}
