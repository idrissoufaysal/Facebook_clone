// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:facebook_b13/Utils/snackbar.dart';
import 'package:facebook_b13/apiServices/config.dart';
import 'package:facebook_b13/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<dynamic> login(Map<String, dynamic> data, String endpoint) async {
    try {
      final http.Response response = await http.post(
        Uri.parse(ApiUrle + endpoint),
        body: jsonEncode(data),
        headers: {"Content-Type": "application/json"},
      );
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
      print(responseJson);
      print('ddd');
      return responseJson;
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> signUp() async {
    try {
      final response = await http.post(Uri.parse(ApiUrle));
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

      return responseJson;
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> getAllPost() async {
    try {
      final response = await http.post(Uri.parse(ApiUrle));
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

      return responseJson;
    } catch (e) {
      print(e);
    }
  }
}

class AuthService {
  void signUpUser(
      {required BuildContext context,
      required String email,
      required String password,
      required String nom,
      required String prenom}) async {
    try {
      User user = User(
          token: '',
          id: '',
          nom: nom,
          prenom: prenom,
          email: email,
          password: password);

      http.Response res = await http.post(Uri.parse('${ApiUrle}/signUp'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-type': 'application/json; charset=UTF-8',
          });
// ignore: use_build_context_synchronously
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, 'Compte creer avec suscce');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void loginUser(
      {required BuildContext context,
      required String email,
      required String password}) {}
}
