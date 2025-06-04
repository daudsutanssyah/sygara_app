import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sygara_app/Config/config.dart';
import 'package:http/http.dart' as http;
import 'package:sygara_app/screens/bottom_nav_bar.dart';
import 'package:sp_util/sp_util.dart';

class AuthControllers extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController telepon = TextEditingController();

  RxBool loading = false.obs;

  // proses login
  Future login() async {
    // endpoint login
    var url = Uri.parse(Config().urlLogin);

    // proses login
    try {
      loading.value = true;
      // request ke API
      final response = await http.post(
        url,
        body: {"email": email.text, "password": password.text},
      );
      var responseDecode = json.decode(response.body);

      // jika status code 200
      if (response.statusCode == 200) {
        SpUtil.putInt("idUser", responseDecode["data"]["id"]);
        SpUtil.putString("userName", responseDecode["data"]["name"]);
        SpUtil.putString("email", responseDecode["data"]["email"]);
        SpUtil.putString("telepon", responseDecode["data"]["telepon"]);

        loading.value = false;
        Get.offAll(BottomNavBar());
      } else {
        loading.value = false;
        // jika status code bukan 200
        Get.snackbar(
          "Error",
          responseDecode["message"],
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Error", e.toString());
    }
  }

  // proses register
  Future register() async {
    // endpoint register
    var url = Uri.parse(Config().urlRegister);

    // proses register
    try {
      final response = await http.post(
        url,
        body: {
          "name": name.text,
          "email": email.text,
          "password": password.text,
          "telepon": telepon.text,
        },
      );
      var responseDecode = json.decode(response.body);

      // handle error register
      Map<String, dynamic> dataError = responseDecode["data"];

      // jika status code 200
      if (response.statusCode == 200) {
        Get.offAll(BottomNavBar());
      } else {
        Get.snackbar(
          "Error",
          responseDecode["message"] == "Error Validation"
              ? dataError.toString()
              : responseDecode["message"],
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  // function Logout
}
