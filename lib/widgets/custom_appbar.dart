import 'package:crockery/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Open the drawer
                },
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ),
                      );
                    },
                    child: Container(
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
            margin: const EdgeInsets.only(top: 145.0, left: 35.0, right: 35.0),
            // Adjust the top margin as needed
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius:
                  BorderRadius.circular(12.0), // Circular border radius
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12.0),
                // Padding around the input content
                hintText: 'Search',
                // Hint text
                hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.6), fontSize: 17.0),
                // Hint text color

                // Leading icon (search icon)
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey
                      .withOpacity(0.6), // Change the color as needed
                ),

                // Trailing icon (vertical menu icon)
                suffixIcon: Image.asset("assets/images/menu.png"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
