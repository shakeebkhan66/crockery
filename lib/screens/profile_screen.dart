import 'package:crockery/screens/salesman_screen.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  Future<void> openGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // You can use the pickedFile for further processing here.
      if (kDebugMode) {
        print(pickedFile.path);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF0F4),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(left: 30.0, top: 30.0),
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
                Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.only(right: 30.0, top: 30.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/maxfresh.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Color(0xff1B3081),
                image: DecorationImage(
                  image: AssetImage("assets/images/person.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            ClipOval(
              child: Material(
                color: const Color(0xff1B3081), // Button color
                child: InkWell(
                  onTap: openGallery,
                  child: const SizedBox(
                      width: 22,
                      height: 22,
                      child: Icon(
                        Icons.photo_camera_outlined,
                        size: 16,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Samar',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff23233B)),
            ),
            const Text(
              'sam8869055',
              style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const Text(
              'samartest@gmail.com',
              style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ListTile(
                title: CustomContainerProfile(text: "Order History", icon: Icons.history,),
                trailing: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: iconColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ListTile(
                title: const CustomContainerProfile(text: "Salesman", icon: Icons.attach_money,),
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const SalesmanScreen()));
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ListTile(
                title: CustomContainerProfile(text: "Privacy", icon: Icons.privacy_tip_outlined,),
                trailing: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: iconColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ListTile(
                title: CustomContainerProfile(text: "Setting", icon: Icons.settings,),
                trailing: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: iconColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ListTile(
                title: CustomContainerProfile(text: "Log Out", icon: Icons.logout,),
                trailing: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: iconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomContainerProfile extends StatelessWidget {
  const CustomContainerProfile({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: iconColor),
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff23233B)),
        ),
      ],
    );
  }
}

