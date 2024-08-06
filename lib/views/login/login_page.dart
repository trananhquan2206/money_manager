import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/views/home.dart/home_page.dart';
import 'package:money_manager/views/register/register_page.dart';
import 'package:money_manager/widgets/bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtPassWord = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 130,
                  width: 130,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Money Manager',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtUserName,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightGreen, width: 2.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: obscureText,
                        controller: txtPassWord,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outlined),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  obscureText = !obscureText;
                                  setState(() {});
                                },
                                icon: Icon(obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            hintText: 'Mật khẩu',
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightGreen, width: 2.0)),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)))),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BottomNavbar(
                                          index: 0,
                                        )),
                                (Route<dynamic> route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              // foregroundColor: Colors.white,
                              backgroundColor:
                                  Colors.amber, // Màu của văn bản và icon
                              // shadowColor: Colors.black, // Màu của bóng nút
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Bạn quên mật khẩu ư?',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 130, 130, 130)),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: Colors.white,
        child: Center(
          child: RichText(
              text: TextSpan(
                  text: 'Bạn chưa có tài khoản?',
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                  children: [
                TextSpan(
                    text: '  Đăng ký',
                    style: const TextStyle(fontSize: 17, color: Colors.amber),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                          (Route<dynamic> route) => false,
                        );

                        print('Đăng ký');
                      })
              ])),
        ),
      ),
    );
  }
}
