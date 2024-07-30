import 'package:crockery/screens/profile_screen.dart';
import 'package:crockery/screens/salesman_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/offer-provider.dart';
import '../widgets/custom_appbar.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<OfferProvider>(context, listen: false).getAllOfferList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(215.0),
        child: CustomAppBar(),
      ),
      drawer: Profile(),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Center(
            child: Text('Offers',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff23233B),
                )),
          ),
          const SizedBox(
            height: 25.0,
          ),

          Consumer<OfferProvider>(builder: (context, value, child) {
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final offer = value.offerProvider;
            return Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: offer!.length,
                separatorBuilder: (context, index) {
                  // Define the space (separator) between each item
                  return const SizedBox(height: 15); // Adjust the height as needed
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: 55,
                    width: 370,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff1B3081),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "${offer[index].offerName} ${offer[index].description} ${offer[index].minBusiness}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff23233B),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }),
          const SizedBox(height: 20.0,)


        ],
      ),
    );
  }
}
