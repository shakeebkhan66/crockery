import 'package:crockery/screens/myprofile_screen.dart';
import 'package:crockery/widgets/custom_container_button.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';

class ListItemScreen extends StatelessWidget {
  const ListItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);

    return Scaffold(
        backgroundColor: homeScreenBackgroundColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 20.0,
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
            const CustomContainerButton(
              text: "Select List Items",
              width: 330,
              containerHeight: 50.0,
              radius: 10.0,
              fontSize: 18.0,
              weight: FontWeight.w500,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 25,
                  border: TableBorder.all(color: textColor),
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // border: Border.all(width: 1, color: Colors.black),
                  ),
                  columns: [
                    DataColumn(
                      label: Container(
                        color: Colors.white,
                        child: Center(child: Text('Images', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: Colors.white,
                        child: Center(child: Text('Name', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: Colors.white,
                        child: Center(child: Text('SKU', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: Colors.white,
                        width: 50,
                        child:
                            Center(child: Text('QTY/\nCTN', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: Colors.white,
                        child: Center(child: Text('Price', style: textStyle)),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                    7,
                    (index) => DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bottle.jpg"))),
                          ),
                        ),
                        DataCell(Container(
                            width: 100,
                            alignment: Alignment.center,
                            child: const Text('Maxfresh Hotpot-Royal'))),
                        const DataCell(Center(child: Text('RHP1000'))),
                        const DataCell(Center(child: Text('48'))),
                        const DataCell(Center(child: Text('\$/ 999.00'))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Enter Coupon Code",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 17.0),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MYProfileScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 25.0,
                          width: 60.0,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 30.0),
                          decoration: BoxDecoration(
                              color: iconColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: orderPopupScrenCardShadowColor,
                                    offset: Offset(-1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 0.2)
                              ],
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Text(
                            "Submit",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "Total Price",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Text(
                        "\$ 11500",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "Total Tax",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 83.0,
                      ),
                      Text(
                        "3%",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "CGST",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 110.0,
                      ),
                      Text(
                        "3%",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "SGST",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 110.0,
                      ),
                      Text(
                        "3%",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 85.0,
                      ),
                      Text(
                        "10%",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        "Grand Total",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 110.0,
                      ),
                      Text(
                        "\$ 10,600",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 22.0),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
