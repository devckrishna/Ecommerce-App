import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/NetworkLayer/DioRequest.dart';
import 'package:ecommerce_app/Models/UserModel.dart';

DioRequest _dio = DioRequest();

Future<UserModel> getAllCartItems(String _api) async {
  Response response;
  response = await _dio.GET(_api);

  UserModel res = UserModel.fromJson(response.data);
  print(res.user!.cartItems!.length);
  // print(currProducts);
  // return currProducts;
  return res;
}

Future<void> addProductToCart(String _api, String jsonBody) async {
  Response response = await _dio.POST(_api, jsonBody);
  print(response.data);
  return;
}

Future<void> removeFromCart(String _api, String jsonBody) async {
  Response response = await _dio.POST(_api, jsonBody);
  print(response.data);
  return;
}

Future<Response> getClientToken(String _api, String jsonBody) async {
  Response response = await _dio.POST(_api, jsonBody);
  // print(response.data!.client_secret);
  // print(response.data["client_secret"]);
  return response;
}
