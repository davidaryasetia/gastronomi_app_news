import 'package:flutter/material.dart';
import 'package:gastronomy/one.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GlobalController extends GetxController {
  final tabHomeIndex = 0.obs;
  var selectedIndex = 0.obs;

  final isLogin = false.obs;
  final url = "http://gapulo.tech/api";
  var tapbar = ['Home', 'Gastronomy', 'Restaurant', 'Culture', 'Reference Village', 'About'];

  final box = GetStorage();
  final token = ''.obs;
  int pasienNumber = 0;

  initState() {
    token.value = getToken() ?? '';
  }

  void setToken(String val) {
    box.write('token', val);
    token.value = val;
  }

  setLogin() {
    box.write('isLogin', true);
    isLogin.value = true;
  }

  bool getLoginStatus() {
    bool isLogin = box.read('isLogin');
    return isLogin;
  }

  String? getToken() {
    String? token = box.read('token');
    return token;
  }

  removeToken() {
    box.remove('token');
    box.erase();
  }

  bool isEmail(String em) {
    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(em);
  }

  bool isNumber(String number) {
    String p = r'^[0-9]+$';
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(number);
  }

  bool isPhone(String phone) {
    String q = r'^(\+62)8[1-9][0-9]{6,10}$';
    RegExp regExp = RegExp(q);
    return regExp.hasMatch(phone);
  }

  // String yourAge(DateTime birthday) {
  //   var duration = AgeCalculator.age(birthday, today: DateTime.now());
  //   return duration.years.toString();
  // }
  void onTabTapped(int index) async {
    tabHomeIndex.value = index;
  }

  final List<Widget> children = [
    const One(),
    // const Two(),
    // const Three(),
    // const Four(),
  ];
}
