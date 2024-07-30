import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/category_provider.dart';

class CategoryScroller extends StatefulWidget {
  const CategoryScroller({super.key});

  @override
  _CategoryScrollerState createState() => _CategoryScrollerState();
}

class _CategoryScrollerState extends State<CategoryScroller> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CategoryProvider>(context, listen: false)
          .getAllcategoryList();
    });
  }


  // final List<String> categories = [
  //   "Streamer",
  //   "Multi Kadai",
  //   "Lunch Box",
  //   "Triply Cookware",
  //   "Category 5",
  //   "Category 6",
  //   "Category 7",
  //   "Category 8",
  //   "Category 9",
  // ];


  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 0;

  var category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.1, 0.0),
            blurRadius: 5,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 10.0,),
          const Text(
            "Category",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            onPressed: () {
              if (selectedIndex > 0) {
                setState(() {
                  selectedIndex--;
                });
                _scrollToIndex();
              }
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            ),
          ),
          Consumer<CategoryProvider>(builder: (context, value, child){
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            category = value.categoryProvider;
            return Expanded(
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: category?.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 1.0, // Vertical divider width
                        height: 30.0, // Adjust height as needed
                        color: Colors.grey, // Color of the vertical divider
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            category![index].categoryName.toString(),
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 12.0,
                              fontWeight: selectedIndex == index
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }),

          // Expanded(
          //   child: ListView.builder(
          //     controller: _scrollController,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: category?.length,
          //     itemBuilder: (context, index) {
          //       return Row(
          //         children: [
          //           Container(
          //             width: 1.0, // Vertical divider width
          //             height: 30.0, // Adjust height as needed
          //             color: Colors.grey, // Color of the vertical divider
          //           ),
          //           GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 selectedIndex = index;
          //               });
          //             },
          //             child: Container(
          //               alignment: Alignment.center,
          //               margin: const EdgeInsets.symmetric(horizontal: 8.0),
          //               child: Text(
          //                 categories[index],
          //                 style: TextStyle(
          //                   color: selectedIndex == index
          //                       ? Colors.black
          //                       : Colors.grey,
          //                   fontSize: 12.0,
          //                   fontWeight: selectedIndex == index
          //                       ? FontWeight.w600
          //                       : FontWeight.normal,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),

          IconButton(
            onPressed: () {
              if (selectedIndex < category.length - 1) {
                setState(() {
                  selectedIndex++;
                });
                _scrollToIndex();
              }
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToIndex() {
    _scrollController.animateTo(
      selectedIndex * 70.0, // Adjust the scroll amount as needed
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}