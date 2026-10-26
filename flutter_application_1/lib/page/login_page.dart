
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mybutton.dart';
import 'package:flutter_application_1/components/mytextfield.dart';
import 'package:flutter_application_1/components/myimage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername =
      TextEditingController();

  final TextEditingController txtPassword =
      TextEditingController();

  String statusLogin = "";

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyImage(
              imagePath: 'assets/images/OIP.webp',
              width: 120,
              height: 120,
              borderRadius: 15,
            ),

            const SizedBox(height: 15),

            const Text(
              "Silakan isi username dan password",
            ),

            MyTextField(
              label: "Username",
              hint: "Masukkan Username",
              textEditingController: txtUsername,
              isPassword: false,
              icon: Icons.email_outlined,
              fontSize: 16,
            ),

            MyTextField(
              label: "Password",
              hint: "Masukkan Password",
              textEditingController: txtPassword,
              isPassword: true,
              icon: Icons.lock_outline,
              fontSize: 16,
            ),

            const SizedBox(height: 10),

            MyButton(
              text: "Login",
              buttonColor: Colors.blue,
              borderRadius: 10,
              fontSize: 18,
              onPressed: () {
                setState(() {
                  if (txtUsername.text == "admin" &&
                      txtPassword.text == "admin") {
                    statusLogin = "Login Berhasil";
                  } else {
                    statusLogin = "Login Gagal";
                  }
                });
              },
            ),

            const SizedBox(height: 10),

            Text(statusLogin),
          ],
        ),
      ),
          bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "© 2026 Muhammad Taqi Junicio XIPPLG2. All Rights Reserved.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}