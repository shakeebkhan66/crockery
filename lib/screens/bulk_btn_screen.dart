import 'package:crockery/providers/bulkbtn_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_container_button.dart';
import '../widgets/mycolors.dart';

class BulkButtonScreen extends StatefulWidget {
  const BulkButtonScreen({super.key});

  @override
  State<BulkButtonScreen> createState() => _BulkButtonScreenState();
}

class _BulkButtonScreenState extends State<BulkButtonScreen> {

  int anotherClassCount = 0;
  int anotherClassCount1 = 0;


  // void updateCount(int count) {
  //   anotherClassCount = count;
  //   print("Hello $anotherClassCount");
  //   print("Hello $anotherClassCount1");
  // }

  void updateCount(int count, bool isIncrement) {
    if (isIncrement) {
      anotherClassCount += count;
    } else {
      anotherClassCount -= count;
    }
    anotherClassCount1 = anotherClassCount; // Update the total count
    print("Hello $anotherClassCount");
    print("Hello $anotherClassCount1");
  }



  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<BulkButtonScreenProvider>(context, listen: false)
          .getAllBulkPageData();
    });
  }



  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = const TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.white,
        fontWeight: FontWeight.bold);

    anotherClassCount1 += anotherClassCount;

    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
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
                      hintText: 'Enter Product name or model no',
                      hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.6), fontSize: 13.0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                      suffixIcon: Image.asset("assets/images/menu.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainerButton1(
                text: "Total Order Quantity",
                secondText: anotherClassCount1.toString(),
                width: 190,
                containerHeight: 70.0,
                radius: 4.0,
                fontSize: 18.0,
                weight: FontWeight.w400,
                secondWeight: FontWeight.w600,
              ),
              const CustomContainerButton1(
                text: "Total Order Value",
                secondText: "10",
                width: 190,
                containerHeight: 70.0,
                radius: 4.0,
                fontSize: 18.0,
                secondWeight: FontWeight.w600,
                weight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Consumer<BulkButtonScreenProvider>(builder: (context, value, child) {
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final bulkData = value.bulkProvider;
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 40,
                  dataRowHeight: 110,
                  border: TableBorder.all(color: textColor),
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => iconColor),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  columns: [
                    DataColumn(
                      label: Container(
                        color: iconColor,
                        child: Center(
                            child: Text('Product Pic', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: iconColor,
                        child: Center(
                            child: Text('Product Name', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: iconColor,
                        child: Center(child: Text('Price', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: iconColor,
                        width: 50,
                        child:
                            Center(child: Text('CTN\nQTY', style: textStyle)),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        color: iconColor,
                        child:
                            Center(child: Text('No.of Ctn', style: textStyle)),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                    bulkData!.length,
                    (index) => DataRow(
                      cells: <DataCell>[
                        DataCell(Column(
                          children: [
                            Image.asset(
                              "assets/images/withoutbottle.png",
                              height: 60,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  const TextSpan(
                                    text: "SIZE-",
                                    style: TextStyle(
                                        color: textColor, fontSize: 8.0),
                                  ),
                                  const WidgetSpan(
                                      child: SizedBox(
                                    width: 4.0,
                                  )),
                                  TextSpan(
                                    text: bulkData[index].size.toString(),
                                    style: const TextStyle(
                                        color: textColor, fontSize: 10.0),
                                  )
                                ])),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  const TextSpan(
                                    text: "SKU-",
                                    style: TextStyle(
                                        color: textColor, fontSize: 8.0),
                                  ),
                                  const WidgetSpan(
                                      child: SizedBox(
                                    width: 4.0,
                                  )),
                                  TextSpan(
                                    text: bulkData[index].sku.toString(),
                                    style: const TextStyle(
                                        color: textColor, fontSize: 10.0),
                                  )
                                ]))
                              ],
                            )
                          ],
                        )),
                        DataCell(
                          Container(
                            width: 100,
                            alignment: Alignment.center,
                            child: Text(
                              bulkData[index].categoryName.toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              bulkData[index].listPrice.toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              bulkData[index].qty.toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                WhiteContainer(countCallback: (count, isIncrement) {
                                  updateCount(count, isIncrement);
                                },),
                                const SizedBox(height: 13.0),
                                // Space between containers
                                InkWell(
                                  onTap: (){
                                    setState(() {});
                                  },
                                    child: const BlueContainer()),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

typedef CountCallback = void Function(int count, bool isIncrement);


// TODO White Container Having Counter Buttons
class WhiteContainer extends StatefulWidget {
  final CountCallback countCallback;
  const WhiteContainer({super.key, required this.countCallback});

  @override
  _WhiteContainerState createState() => _WhiteContainerState();
}

class _WhiteContainerState extends State<WhiteContainer> {
  int count = 0;

  // void increaseCount() {
  //   setState(() {
  //     count++;
  //     widget.countCallback(count);
  //   });
  // }
  //
  // void decreaseCount() {
  //   setState(() {
  //     if (count > 0) {
  //       count--;
  //       widget.countCallback(count);
  //     }
  //   });
  // }

  updateCount(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        count++;
      } else {
        if (count > 0) {
          count--;
        }
      }
      widget.countCallback(count, isIncrement);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.black54),
          boxShadow: const [
            BoxShadow(
                color: orderPopupScrenCardShadowColor,
                offset: Offset(-1, 1),
                blurRadius: 2,
                spreadRadius: 0.2)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () => updateCount(true),
            child: Container(
                width: 30,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    border: Border.all(color: Colors.black54)),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                )),
          ),
          GestureDetector(
            onTap: () => updateCount(false),
            child: Container(
                width: 30,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  border: Border.all(color: Colors.black54),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.remove,
                )),
          ),
        ],
      ),
    );
  }
}

// TODO Blue Container Submit Button
class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iconColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Text(
        'Submit',
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
      ),
    );
  }
}
