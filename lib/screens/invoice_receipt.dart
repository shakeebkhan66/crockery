import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:crockery/widgets/mycolors.dart';
import '../models/invoicereceiptmodel.dart';
import '../widgets/custom_button.dart';

class InvoiceReceiptScreen extends StatefulWidget {
  const InvoiceReceiptScreen({super.key});

  @override
  State<InvoiceReceiptScreen> createState() => _InvoiceReceiptScreenState();
}

class _InvoiceReceiptScreenState extends State<InvoiceReceiptScreen> {
  // TODO Create a list of dummy data
  final List<InvoiceReceiptModel> dummyData = [
    InvoiceReceiptModel(
      performaNo: '7521355',
      invoice: '8800xx87',
      date: '28/8/2023',
      fileImageUrl:
      'assets/images/bottle.jpg',
    ),
    InvoiceReceiptModel(
      performaNo: '7521355',
      invoice: '8800xx87',
      date: '28/8/2023',
      fileImageUrl:
      'assets/images/bottle.jpg',
    ),
    InvoiceReceiptModel(
      performaNo: '7521355',
      invoice: '8800xx87',
      date: '28/8/2023',
      fileImageUrl:
      'assets/images/bottle.jpg',
    ),
    InvoiceReceiptModel(
      performaNo: '7521355',
      invoice: '8800xx87',
      date: '28/8/2023',
      fileImageUrl:
      'assets/images/bottle.jpg',
    ),
    InvoiceReceiptModel(
      performaNo: '7521355',
      invoice: '8800xx87',
      date: '28/8/2023',
      fileImageUrl:
      'assets/images/bottle.jpg',
    ),
  ];

  // TODO Show Image Dialog Box
  void _showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  )),
            ),
          );
        });
  }


  // TODO Date Calender
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

  // TODO To Add New Invoice Data
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50.0,
                  width: double.maxFinite,
                  color: iconColor,
                  alignment: Alignment.center,
                  child: const Text(
                    "Invoice",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0), // 15.0 height space between content

                // Custom Row for "Inv No."
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Performa No."),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Custom Row for "Date"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Inv No."),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Custom Row for "File"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Date"),
                      Expanded(
                        child: TextFormField(
                          onTap: (){
                            _selectDate(context);
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Custom "Submit" button
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 215.0, bottom: 5.0, top: 10.0),
                    child: CustomButton(text: "View", containerHeight: 30.0, margin: 0.0, textSize: 13.0, borderRadius: 5.0),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
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
                        blurRadius: 2,
                        spreadRadius: 0.2)
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
            height: 20.0,
          ),
          const CustomButton(
              text: "Invoice",
              containerHeight: 50.0,
              margin: 20.0,
              textSize: 18.0,
              borderRadius: 8.0),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                var dataItem = dummyData[index];

                return Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.0,
                        child: ListTile(
                          title: const Text("Performa No."),
                          trailing: Text(dataItem.performaNo),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                        child: ListTile(
                          title: const Text("Invoice"),
                          trailing: Text(dataItem.invoice),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                        child: ListTile(
                          title: const Text("Date"),
                          trailing: Text(dataItem.date),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                        child: ListTile(
                          // title: const Text("File"),
                          trailing: InkWell(
                              onTap: () {
                                _showImageDialog(
                                    context, dataItem.fileImageUrl);
                              },
                              child: const Text(
                                "View",
                                style: TextStyle(
                                    color: Color(0xff0038FF), fontSize: 18.0),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        child: Divider(
                          thickness: 1.0,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          _showCustomDialog(context);
        },
        child: const Padding(
          padding: EdgeInsets.only(bottom: 30.0, left: 215, right: 45.0),
          child: CustomButton(
              text: "Add New",
              containerHeight: 50.0,
              margin: 0.0,
              textSize: 18.0,
              borderRadius: 8.0),
        ),
      ),
    );
  }
}



class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey.withOpacity(0.2),
        border: Border.all(color: textColor),
      ),
      child: Center(
        child: Container(
          height: 25,
          width: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            border: Border.all(color: textColor),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upload Image',
                style: TextStyle(
                    color: textColor,
                    fontSize: 12.0
                ),
              ),
              SizedBox(width: 5.0,),
              Icon(
                Icons.upload_file,
                color: textColor,
                size: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}