import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sygara_app/Controllers/auth_controllers.dart';
import 'package:sygara_app/screens/Profil/reset_password_page.dart';
import 'package:sygara_app/screens/register_page.dart';

import 'package:sygara_app/themes/themes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  final authC = Get.put(AuthControllers());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 53),
            Center(child: Image.asset('assets/logo.png')),
            SizedBox(height: 118),
            Text(
              "Masuk",
              style: titleTextStyle.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Masuk ke akun terdaftar untuk lanjut",
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(height: 34),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // form email
                  Text("Email", style: titleTextStyle),
                  SizedBox(height: 8),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email tidak boleh kosong";
                      }
                      return null;
                    },
                    controller: authC.email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      hintText: "cth. example@email.com",
                      hintStyle: secondaryTextStyle,
                    ),
                  ),
                  SizedBox(height: 13),
                  // form buat password
                  Text("Buat Password", style: titleTextStyle),
                  SizedBox(height: 8),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    },
                    controller: authC.password,
                    obscureText: _obscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                      hintText: "***************",
                      hintStyle: secondaryTextStyle,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  // lupa password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPasswordPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Lupa Password?",
                          style: TextStyle(color: Color(0xff357954)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 42),
                  Obx(
                    () => SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => BottomNavBar()),
                          // );
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            authC.login();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child:
                            authC.loading == true
                                ? CircularProgressIndicator(color: whiteColor)
                                : Text('Masuk', style: whiteTextStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun?'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    ' Daftar',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
