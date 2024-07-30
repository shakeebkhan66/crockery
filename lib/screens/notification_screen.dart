import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff1B3081),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Notification',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
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
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
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
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff1B3081),
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                String mainText =
                    "Hurry, Your Items Are Waiting! Finish Your Order Today.";
                String dateText = "10.2.2023";
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff1B3081),
                            ),
                            child: const Icon(Icons.notifications_none_sharp,
                                color: Colors.white, size: 25),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            mainText,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff23233B)),
                          ),
                        ],
                      ),
                      const Positioned(
                        top: 0,
                        right: 0,
                        child: SizedBox(
                          width: 60,
                          height: 40,
                          child: Text(
                            '10.2.2023',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
