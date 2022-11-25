import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myflutter_ecommerce/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});

  List<String> cart = [];
  void appToCartList(List<CartModel> cartList) {
    cart = [];
    /*
      convert object to string because sharedpreference only accepts string
    */
    cartList.forEach(((element) => cart.add(jsonEncode(element))));

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    getCartList();
  }

  List<CartModel> getCartList() {
    List<String> carts = [];
    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      cart = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
    }
    List<CartModel> cartList = [];
    /*
      List<Object> = list=[
        "object1",
        "object2",
        "object3",
        ...
      ]
    */
    carts.forEach(
        (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));

    return cartList;
  }

  void addToCartHistoryList() {}
}
