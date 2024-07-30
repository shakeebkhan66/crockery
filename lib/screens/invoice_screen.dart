import 'package:crockery/models/invoice.dart';
import 'package:crockery/screens/list_item_screen.dart';
import 'package:crockery/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../widgets/mycolors.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<InvoiceModel> data = [
      InvoiceModel(
          id: 1,
          nameofProduct: "Lorem ipsum",
          qty: 220,
          rate: 1200,
          amount: 1200),
      InvoiceModel(
          id: 2,
          nameofProduct: "Lorem ipsum",
          qty: 220,
          rate: 1200,
          amount: 1200),
      InvoiceModel(
          id: 3,
          nameofProduct: "Lorem ipsum",
          qty: 220,
          rate: 1200,
          amount: 1200),
      InvoiceModel(
          id: 4,
          nameofProduct: "Lorem ipsum",
          qty: 220,
          rate: 1200,
          amount: 1200),
    ];

    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
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
                          offset: Offset(-2, 2),
                          blurRadius: 4,
                          spreadRadius: 0.2)
                    ],
                  ),
                  child:
                      const Icon(Icons.arrow_back, size: 30, color: iconColor),
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
                              offset: Offset(-2, 2),
                              blurRadius: 4,
                              spreadRadius: 0.2)
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
            const SizedBox(height: 25.0),
            const CustomButton(
                text: "View Invoice ",
                containerHeight: 45.0,
                borderRadius: 0.0,
                margin: 0.0,
                textSize: 22.0),
            Container(
              height: 635,
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      color: orderPopupScrenCardShadowColor,
                      offset: Offset(-2, 1),
                      blurRadius: 5,
                      spreadRadius: 0.5)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 15.0, top: 15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90.0),
                              border: Border.all(color: iconColor)),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: iconColor,
                              borderRadius: BorderRadius.circular(90.0),
                              border: Border.all(color: iconColor),
                            ),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90.0),
                                  border: Border.all(color: Colors.grey),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/person.png"),
                                    scale: 0.1,
                                  )),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                        child: const Column(
                          children: [
                            Text(
                              "Invoice",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                  letterSpacing: 0.5,
                                  color: textColor),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Inv# - D0086",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                  color: textColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "samar",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                  letterSpacing: 0.5,
                                  color: textColor),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "sam8869055",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "c block sector 25",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Noida",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "983900xxxx",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: const Column(
                          children: [
                            Text(
                              "Balance Due",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                  color: textColor),
                            ),
                            Text(
                              "Rs. 3800,00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25.0,
                                  letterSpacing: 0.5,
                                  color: textColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Bill To",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                  letterSpacing: 0.5,
                                  color: textColor),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Samar...!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "c block sectr 25",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Noida",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "983900xxxx",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Invoice Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  "12 Aug 2023",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: textColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Trem",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  "Not 15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: textColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Due Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  "27 Aug 2023",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: textColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const ContainerExample(),
                  ContainerList(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // Center(
                  //   child: Align(
                  //     alignment: Alignment.topRight,
                  //     child: Container(
                  //       width: 200,
                  //       child: Column(
                  //         children: [
                  //           Row(
                  //             children: [
                  //               const SizedBox(width: 20.0,),
                  //               Text("Tax"),
                  //               const SizedBox(width: 61.0,),
                  //               Text("3%"),
                  //             ],
                  //           ),
                  //           SizedBox(height: 6.0,),
                  //           Row(
                  //             children: [
                  //               const SizedBox(width: 20.0,),
                  //               Text("CGST"),
                  //               const SizedBox(width: 50.0,),
                  //               Text("3%"),
                  //             ],
                  //           ),
                  //           SizedBox(height: 6.0,),
                  //           Row(
                  //             children: [
                  //               const SizedBox(width: 20.0,),
                  //               Text("SGST"),
                  //               const SizedBox(width: 52.0,),
                  //               Text("3%"),
                  //             ],
                  //           ),
                  //           SizedBox(height: 6.0,),
                  //           Row(
                  //             children: [
                  //               const SizedBox(width: 20.0,),
                  //               Text("Sub Total"),
                  //               const SizedBox(width: 27.0,),
                  //               Text("1800.00"),
                  //             ],
                  //           ),
                  //           SizedBox(height: 6.0,),
                  //           Row(
                  //             children: [
                  //               const SizedBox(width: 45.0,),
                  //               Text("Total"),
                  //               const SizedBox(width: 30.0,),
                  //               Text("1800.00"),
                  //             ],
                  //           ),
                  //           const SizedBox(height: 20.0,),
                  //           Container(
                  //             height: 35.0,
                  //             color: iconColor,
                  //             alignment: Alignment.center,
                  //             child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //               children: [
                  //                 Text("Balance Due", style: TextStyle(color: Colors.white),),
                  //                 Text("1800.00", style: TextStyle(color: Colors.white),),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff1B3081),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '#',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Name &\nDescription',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            'Show Qty',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            'Rate',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            'Amount',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerList extends StatelessWidget {
  final List<InvoiceModel> data = [
    InvoiceModel(
        id: 1,
        nameofProduct: "Lorem ipsum",
        qty: 220,
        rate: 1200,
        amount: 1200),
    InvoiceModel(
        id: 2,
        nameofProduct: "Lorem ipsum",
        qty: 220,
        rate: 1200,
        amount: 1200),
  ];

  ContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(data[index].id.toString()),
                          Text(data[index].nameofProduct.toString()),
                          Text(data[index].qty.toString()),
                          Text(data[index].rate.toString()),
                          Text(data[index].amount.toString()),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Divider(
                        color: textColor,
                        thickness: 1.0,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("Tax"),
                        SizedBox(
                          width: 61.0,
                        ),
                        Text("3%"),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("CGST"),
                        SizedBox(
                          width: 50.0,
                        ),
                        Text("3%"),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("SGST"),
                        SizedBox(
                          width: 52.0,
                        ),
                        Text("3%"),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("Sub Total"),
                        SizedBox(
                          width: 27.0,
                        ),
                        Text("1800.00"),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 45.0,
                        ),
                        Text("Total"),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text("1800.00"),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const ListItemScreen())),
                      child: Container(
                        height: 30.0,
                        color: iconColor,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Balance Due",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "1800.00",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class ContainerList extends StatelessWidget {
//   final List<InvoiceModel> data = [
//     InvoiceModel(
//         id: 1,
//         nameofProduct: "Lorem ipsum",
//         qty: 220,
//         rate: 1200,
//         amount: 1200),
//     InvoiceModel(
//         id: 2,
//         nameofProduct: "Lorem ipsum",
//         qty: 220,
//         rate: 1200,
//         amount: 1200),
//   ];
//
//   ContainerList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: data.length,
//         physics: const BouncingScrollPhysics(),
//         itemBuilder: (BuildContext context, int index) {
//       return Column(
//         children: [
//           Container(
//             height: 50.0,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.white,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text(data[index].id.toString()),
//                 Text(data[index].nameofProduct.toString()),
//                 Text(data[index].qty.toString()),
//                 Text(data[index].rate.toString()),
//                 Text(data[index].amount.toString()),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 25.0),
//             child: Divider(
//               color: textColor,
//               thickness: 1.0,
//             ),
//           ),
//         ],
//       );
//           }
//       ),
//     );
//   }
// }
