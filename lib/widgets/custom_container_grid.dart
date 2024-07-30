import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../screens/product_view_screen.dart';

class ContainerGrid extends StatefulWidget {
  const ContainerGrid({super.key});

  @override
  State<ContainerGrid> createState() => _ContainerGridState();
}

class _ContainerGridState extends State<ContainerGrid> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductListProvider>(context, listen: false)
          .getAllProductList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductListProvider>(builder: (context, value, child) {
      if (value.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      final product = value.productProvider;
      return Expanded(
          child: GridView.builder(
              itemCount: product?.length,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 2.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ContainerCard(
                    itemName: product![index].itemName.toString(),
                    itemPic: product[index].itemPic.toString(),
                    size: product[index].size.toString(),
                    qty: product[index].qty.toString(),
                    mrp: product[index].mrp.toString(),
                    gst: product[index].gst.toString(),
                  ),
                );
              }));
    });

    //   Expanded(
    //   child: GridView.count(
    //     physics: const BouncingScrollPhysics(),
    //     crossAxisCount: 2, // Number of columns
    //     crossAxisSpacing: 8.0,
    //     mainAxisSpacing: 8.0,
    //     padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
    //     children: List.generate(4, (index) {
    //       return const ContainerCard();
    //     }),
    //   ),
    // );

  }
}

class ContainerCard extends StatelessWidget {
  ContainerCard(
      {super.key,
        required this.itemName,
        required this.itemPic,
        required this.size,
        required this.qty,
        required this.mrp,
        required this.gst});

  String itemName;
  String itemPic;
  String mrp;
  String gst;
  String size;
  String qty;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => const ProductViewScreen(),
          ),
        );
      },
      child: Container(
        height: 220,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff1B3081),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 115,
              width: 180,
              padding: const EdgeInsets.only(top: 8.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/bottle.jpg', // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "SKU: TSH-000-S",
                  style: TextStyle(color: Colors.black45, fontSize: 12.0),
                ),
                Text(
                  size.toString(),
                  style: const TextStyle(color: Colors.black87, fontSize: 10.0),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      width: 100, // Set your desired width
                      child: Text(
                        itemName.toString(),
                        style: const TextStyle(color: Colors.black, fontSize: 12.0),
                        overflow: TextOverflow.ellipsis, // Handles overflow by showing ellipsis
                      ),
                    ),
                  ),
                  Text(
                    "MOQ - ${qty.toString()}",
                    style: const TextStyle(color: Colors.black87, fontSize: 10.0),
                  ),
                ],
              ),
            ),

            Container(
              margin:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "MRP",
                    style: TextStyle(color: Colors.black, fontSize: 12.0),
                  ),
                  Text(
                    "\$ ${gst.toString()}",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 10.0,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    "\$ ${mrp.toString()}",
                    style: const TextStyle(color: Colors.black87, fontSize: 10.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
