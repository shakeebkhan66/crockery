import 'package:crockery/screens/product_screen.dart';
import 'package:crockery/screens/profile_screen.dart';
import 'package:crockery/widgets/custom_container_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/category_provider.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/vertical_carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CategoryProvider>(context, listen: false)
          .getAllcategoryList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(215.0),
        child: CustomAppBar(),
      ),

      // TODO Drawer
      drawer: const Profile(),

      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const VerticalSliderDemo(),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomContainerButton(
                text: "Product Categories",
                fontSize: 18.0,
                width: 200,
                radius: 8.0,
                weight: FontWeight.w600,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductScreen(),
                    ),
                  );
                },
                child: const CustomContainerButton(
                  text: "View all",
                  width: 85,
                  radius: 8.0,
                  fontSize: 18.0,
                  weight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),

          Consumer<CategoryProvider>(builder: (context, value, child) {
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final category = value.categoryProvider;
            return Expanded(
                child: GridView.builder(
                    itemCount: category?.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 5.0
                    ),
                    itemBuilder: (context, index) {
                      return Center(
                        child: Stack(
                          children: [
                            Container(
                              height: 185,
                              width: 180,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                  borderRadius: BorderRadius.circular(8.0),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2, 2),
                                        blurRadius: 5.0,
                                        spreadRadius: 0.4)
                                  ]),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(7.0),
                                      topRight: Radius.circular(7.0)),
                                  child: Image.asset(
                                    "assets/images/myrectangleone.png",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              height: 130,
                              width: 180,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(8.0),
                                  ),
                                  child: Image.asset(
                                    "assets/images/bottle.jpg",
                                    height: 150,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 150.0, left: 10.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 120,
                                child: Text(
                                  category![index].categoryName.toString(),
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }));
          }),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Stack(
          //       children: [
          //         Container(
          //           height: 185,
          //           width: 180,
          //           decoration: BoxDecoration(
          //             // color: Colors.amber,
          //               borderRadius: BorderRadius.circular(8.0),
          //               boxShadow: const [
          //                 BoxShadow(
          //                     color: Colors.grey,
          //                     offset: Offset(-2, 2),
          //                     blurRadius: 5.0,
          //                     spreadRadius: 0.4)
          //               ]),
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                   topLeft: Radius.circular(7.0),
          //                   topRight: Radius.circular(7.0)),
          //               child: Image.asset(
          //                 "assets/images/myrectangleone.png",
          //                 fit: BoxFit.cover,
          //               )),
          //         ),
          //         SizedBox(
          //           height: 130,
          //           width: 180,
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topRight: Radius.circular(8.0),
          //                 topLeft: Radius.circular(8.0),
          //               ),
          //               child: Image.asset("assets/images/bottle.jpg", height: 150, fit: BoxFit.cover, )),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(top: 150.0, left: 10.0),
          //           child: Text(
          //             "Hotpot",
          //             style: TextStyle(
          //                 fontSize: 16.0,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         Container(
          //           height: 185,
          //           width: 180,
          //           decoration: BoxDecoration(
          //             // color: Colors.amber,
          //               borderRadius: BorderRadius.circular(8.0),
          //               boxShadow: const [
          //                 BoxShadow(
          //                     color: Colors.grey,
          //                     offset: Offset(-2, 2),
          //                     blurRadius: 5.0,
          //                     spreadRadius: 0.4)
          //               ]),
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                   topLeft: Radius.circular(7.0),
          //                   topRight: Radius.circular(7.0)),
          //               child: Image.asset(
          //                 "assets/images/myrectangleone.png",
          //                 fit: BoxFit.cover,
          //               )),
          //         ),
          //         SizedBox(
          //           height: 130,
          //           width: 180,
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topRight: Radius.circular(8.0),
          //                 topLeft: Radius.circular(8.0),
          //               ),
          //               child: Image.asset("assets/images/bottle.jpg", height: 150, fit: BoxFit.cover, )),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(top: 150.0, left: 10.0),
          //           child: Text(
          //             "Hotpot",
          //             style: TextStyle(
          //                 fontSize: 16.0,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 14.0,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Stack(
          //       children: [
          //         Container(
          //           height: 185,
          //           width: 180,
          //           decoration: BoxDecoration(
          //             // color: Colors.amber,
          //               borderRadius: BorderRadius.circular(8.0),
          //               boxShadow: const [
          //                 BoxShadow(
          //                     color: Colors.grey,
          //                     offset: Offset(-2, 2),
          //                     blurRadius: 5.0,
          //                     spreadRadius: 0.4)
          //               ]),
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                   topLeft: Radius.circular(7.0),
          //                   topRight: Radius.circular(7.0)),
          //               child: Image.asset(
          //                 "assets/images/myrectangleone.png",
          //                 fit: BoxFit.cover,
          //               )),
          //         ),
          //         SizedBox(
          //           height: 130,
          //           width: 180,
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topRight: Radius.circular(8.0),
          //                 topLeft: Radius.circular(8.0),
          //               ),
          //               child: Image.asset("assets/images/bottle.jpg", height: 150, fit: BoxFit.cover, )),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(top: 150.0, left: 10.0),
          //           child: Text(
          //             "Hotpot",
          //             style: TextStyle(
          //                 fontSize: 16.0,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         Container(
          //           height: 185,
          //           width: 180,
          //           decoration: BoxDecoration(
          //             // color: Colors.amber,
          //               borderRadius: BorderRadius.circular(8.0),
          //               boxShadow: const [
          //                 BoxShadow(
          //                     color: Colors.grey,
          //                     offset: Offset(-2, 2),
          //                     blurRadius: 5.0,
          //                     spreadRadius: 0.4)
          //               ]),
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                   topLeft: Radius.circular(7.0),
          //                   topRight: Radius.circular(7.0)),
          //               child: Image.asset(
          //                 "assets/images/myrectangleone.png",
          //                 fit: BoxFit.cover,
          //               )),
          //         ),
          //         SizedBox(
          //           height: 130,
          //           width: 180,
          //           child: ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topRight: Radius.circular(8.0),
          //                 topLeft: Radius.circular(8.0),
          //               ),
          //               child: Image.asset("assets/images/bottle.jpg", height: 150, fit: BoxFit.cover, )),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(top: 150.0, left: 10.0),
          //           child: Text(
          //             "Hotpot",
          //             style: TextStyle(
          //                 fontSize: 16.0,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),

          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
