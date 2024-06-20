import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/auth/login/login_page.dart';
import 'package:gastronomy/page/home/homepage.dart';
import 'package:get/get.dart' hide Response, FormData, MultipartFile;
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var c = Get.put(GlobalController());
  String username = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  final Dio dio = Dio();

  void login(BuildContext context) async {
    print(email);
    print(password);
    var json = {
      "email": "$email",
      "password": "$password",
    };
    try {
      final response = await dio.post(
        '${c.url}/auth/login',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(json),
      );
      print("=====================================");
      print(response.statusCode);
      // print(response.data);
      print(response.data["token"]);
      var ok = response.data?["success"];
      if (response.statusCode! >= 200 && response.statusCode! < 400) {
        // print(response.data["response"]);
        c.setToken(response.data['token']);
        c.setLogin();
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Login Success'),
          backgroundColor: Colors.black87,
        ));
        // c.isLogin.value = true;
        clearData();
        Get.offAll(HomePage());
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Login Failed"),
          // content: Text(response.data["response"]["message"]),
          backgroundColor: Colors.black87,
        ));
      }
      return null;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  void register(BuildContext context) async {
    //name
    //email
    print(username);
    print(email);
    print(password);
    print(confirmPassword);
    // final token = await c.getToken();
    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //   content: Text('Login Success'),
    //   backgroundColor: Colors.black87,
    // ));
    // final formData = FormData.fromMap({'email': "$email", 'password': "$password"});
    var json = {
      "name": "$username",
      "email": "$email",
      "password": "$password",
      "password2": "$confirmPassword",
    };
    try {
      // final response = await dio.post('${c.baseUrl}login', data: formData);
      final response = await dio.post(
        '${c.url}/auth/register',
        options: Options(headers: {
          // "Authorization":
          //       "Bearer $token",
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(json),
      );
      // final response = await dio.post('http://192.168.195.195:5009/api/auth/login', data: formData);
      // print(response);
      print("=====================================");
      print(response.statusCode);
      // print(response.data);
      print(response.data["token"]);
      var ok = response.data?["success"];
      if (response.statusCode == 200) {
        // print(response.data["response"]);
        // c.setToken(response.data['token']);
        // c.setLogin();

        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Register Success'),
          backgroundColor: Colors.black87,
        ));
        // c.isLogin.value = true;
        Get.offAll(LoginPage());
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Register Failed"),
          // content: Text(response.data["response"]["message"]),
          backgroundColor: Colors.black87,
        ));
      }
      return null;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  clearData() {
    username = '';
    email = '';
    password = '';
    confirmPassword = '';
  }
}
