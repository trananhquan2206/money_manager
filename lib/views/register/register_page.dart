import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/views/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
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
                        controller: txtName,
                        decoration: const InputDecoration(
                            hintText: 'Họ và tên',
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
                        controller: txtEmail,
                        decoration: const InputDecoration(
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
                            onPressed: () {},
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
                                'Đăng ký',
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
                  text: 'Bạn đã có tài khoản?',
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                  children: [
                TextSpan(
                    text: '  Đăng nhập',
                    style: const TextStyle(fontSize: 17, color: Colors.amber),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                          (Route<dynamic> route) => false,
                        );

                        print('Đăng nhập');
                      })
              ])),
        ),
      ),
    );
  }
}
