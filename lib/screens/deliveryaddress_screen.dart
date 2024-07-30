import 'package:flutter/material.dart';



class DeliveryAddScreen extends StatefulWidget {
  const DeliveryAddScreen({super.key});

  @override
  State<DeliveryAddScreen> createState() => _DeliveryAddScreenState();
}

class _DeliveryAddScreenState extends State<DeliveryAddScreen> {

  String? dropdownValue;

  var item = [
    'Rajasthan',
    'Karnataka',
    'Punjab',
    'Haryana',
    'Chandigarh',
    'Gujarat',
    'Kerala',
    'Tamil Nadu',
  ];



  // TODO Dialog Box
  void _showDialogBox(){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
          ),
          content: SizedBox(
            height: 490,
            width: 280,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35.0,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10.0 ),
                        hintText: 'Enter Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text('Company',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10.0 ),
                        hintText: 'Enter Comapny Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Row(
                    children: [
                      Text('Street Address ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      Text('∗',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10.0 ),
                        hintText: 'Enter Address',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Row(
                    children: [
                      Text('City ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      Text('∗',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10.0 ),
                        hintText: 'City Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Row(
                    children: [
                      Text('State/Province ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),),
                      Text('∗',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35,
                    width: 290,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff1B3081),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: const Text(
                            'Please select State/province',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: dropdownValue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          items: item.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
                  ),

                  const SizedBox(height: 10.0,),
                  const Row(
                    children: [
                      Text('Zip/Postal Code ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      Text('∗',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.red),),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color(0xff1B3081)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10.0 ),
                        hintText: 'Enter Zip/Postal Code',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            backgroundColor: const Color(0xff1B3081),
                            fixedSize: const Size(180, 7)
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 14, fontWeight : FontWeight.w400,color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
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
                    child: const Icon(Icons.arrow_back,color: Color(0xff1B3081),size: 25,),
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
                          borderRadius: BorderRadius.circular(12.0),
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
                height: 30.0,
              ),
              InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> const OutStandingScreen()));
                },
                child: Container(
                  height: 50,
                  width: 370,
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
                  child: const Center(child: Text('Delivery Address',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.only(top:20 , bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Samar...',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 7,
                    ),
                    Text('Samar Enterprices',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 7,
                    ),
                    Text('3b block ramp road sector 16',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 7,
                    ),
                    Text('Noida',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 7,
                    ),
                    Text('Uttar Pradesh',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 7,
                    ),
                    Text('7720013',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _showDialogBox();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0)),
                      backgroundColor: const Color(0xff1B3081),
                      fixedSize: const Size(150, 15)
                  ),
                  child: const Text(
                    'Add New',
                    style: TextStyle(fontSize: 17, fontWeight : FontWeight.w400,color: Colors.white),
                  )), //

            ],
          ),
        ),
      ),
    );
  }
}
