import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sygara_app/Controllers/auth_controllers.dart';
import 'package:sygara_app/screens/login_page.dart';
import 'package:sygara_app/themes/themes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final authC = Get.put(AuthControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 15),
            // Logo
            Center(child: Image.asset('assets/logo.png', height: 70)),
            SizedBox(height: 15),
            // title
            Text(
              'Daftar',
              style: titleTextStyle.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Buat akun untuk mulai belanja',
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            // title
            SizedBox(height: 30),
            // form nama lengkap
            Text('Nama Lengkap', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              controller: authC.name,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: 'cth. Ahmad Fulan',
                hintStyle: secondaryTextStyle,
              ),
            ),
            SizedBox(height: 10),
            // form nomor telepon
            Text('Nomor Telepon', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              controller: authC.telepon,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: 'cth. 628xxxxxxxx',
                hintStyle: secondaryTextStyle,
              ),
            ),
            SizedBox(height: 10),
            // form email
            Text('Email', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              controller: authC.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: 'cth. example@email.com',
                hintStyle: secondaryTextStyle,
              ),
            ),
            SizedBox(height: 10),
            // form buat password
            Text('Buat Password', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              controller: authC.password,
              obscureText: _obscurePassword,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: '***************',
                hintStyle: secondaryTextStyle,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // form confirm password
            Text('Konfirmasi Password', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              obscureText: _obscureConfirmPassword,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: '***************',
                hintStyle: secondaryTextStyle,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    });
                  },
                  icon: Icon(
                    _obscureConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // button daftar
            SizedBox(
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => BottomNavBar()),
                  // );
                  authC.register();
                },
                child: Text('Daftar', style: whiteTextStyle),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: blackTextStyle.copyWith(fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    ' Masuk',
                    style: TextStyle(color: primaryColor, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              textAlign: TextAlign.center,
              '*Informasi pengguna untuk keperluan pengiriman \n'
              'dan promosi terkait produk',
              style: secondaryTextStyle.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
