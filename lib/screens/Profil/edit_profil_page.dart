import 'package:flutter/material.dart';
import 'package:sygara_app/themes/themes.dart';

class EditProfilPage extends StatelessWidget {
  const EditProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/icon/ic-arrow-back.png',
            width: 40,
            height: 40,
          ),
        ),
        title: Text('Edit Profil', style: greyTextStyle),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text('Nama Lengkap', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: 'Ahmad Fulan',
                hintStyle: secondaryTextStyle,
              ),
            ),
            SizedBox(height: 13),
            Text('Nomor Telepon', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: '08123456789',
                hintStyle: secondaryTextStyle,
              ),
            ),
            SizedBox(height: 13),
            Text('Email', style: titleTextStyle),
            SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: secondaryColor, width: 1.5),
                ),
                hintText: 'ahmadfulan@email.com',
                hintStyle: secondaryTextStyle,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: null,
          child: Text('Simpan Perubahan', style: whiteTextStyle),
        ),
      ),
    );
  }
}
