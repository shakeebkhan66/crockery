import 'package:crockery/auth/login_screen.dart';
import 'package:crockery/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F9),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/ftr-shp.png',
          fit: BoxFit.contain,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/tp-shp.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 90,
                        height: 45,
                        child: Image.asset(
                          'assets/images/maxfresh.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      'Company Name',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Company Name',
                          labelStyle: TextStyle(
                              fontSize: 13.0, color: Color(0xffDEDEDE)),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          // border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'GST Number',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Enter Your GST Number',
                          labelStyle: TextStyle(
                              fontSize: 13.0, color: Color(0xffDEDEDE)),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Contect Person',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              fontSize: 13.0, color: Color(0xffDEDEDE)),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Phone',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Enter Phone Number',
                          labelStyle: TextStyle(
                              fontSize: 13.0, color: Color(0xffDEDEDE)),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'City',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff23233B),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          'State',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff23233B),
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 160,
                          padding: const EdgeInsets.only(left: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            maxLength: 1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: '',
                              labelText: 'Enter Your City',
                              labelStyle: TextStyle(
                                  fontSize: 13.0, color: Color(0xffDEDEDE)),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          padding: const EdgeInsets.only(left: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            maxLength: 1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: '',
                              labelText: 'Enter Your State',
                              labelStyle: TextStyle(
                                  fontSize: 13.0, color: Color(0xffDEDEDE)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'OTP',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomButton(
                        text: "Generate OTP",
                        containerHeight: 45.0,
                        margin: 10.0,
                        textSize: 15.0,
                        borderRadius: 8.0),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter Your OTP',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff23233B),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: const InputDecoration(
                                counterText: '',
                                enabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: const InputDecoration(
                                counterText: '',
                                enabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: const InputDecoration(
                                counterText: '',
                                enabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: const InputDecoration(
                                counterText: '',
                                enabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_box_outline_blank,
                          size: 15,
                          color: Color(0xff23233A),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'I agree with',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff313131)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Privacy and terms',
                              style: TextStyle(
                                  color: Color(0xff23233A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomButton(
                        text: "Register",
                        containerHeight: 45.0,
                        margin: 10.0,
                        textSize: 15.0,
                        borderRadius: 8.0),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Have you an account?',
                          style: TextStyle(
                            color: Color(0xff8D8888),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                color: Color(0xff23233A),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
