// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:facebook_b13/apiServices/config.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

Dio dio = Dio();
var log = Logger();

class NetworkHandler {
  
  //*fontion GET pout afficher
  Future<dynamic> get(String url) async {
    url = formater(url);
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);
      print(response.body);
      return response;
    }
    log.d(response.body);
    log.d(response.statusCode);
  }

  String formater(String url) {
    return ApiUrl + url;
  }

  //* fonction POST pour envoyer les donnees
  Future<dynamic> post(String url, Map<String, String> body) async {
    url = formater(url);
    try {
      http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);
      var jsonRespones = jsonEncode(response.body);
      print(jsonRespones);
      return jsonRespones;
    }
    log.d(response.body);
    log.d(response.statusCode);
    return null;
    } catch (e) {
       print('Erreur de statut: +${e.toString()}');
        return null;
    }
    
  }

  Future<dynamic> postData(String url, Map<String, dynamic> data) async {
    Response response;
    url = formater(url);

    try {
      response = await dio.post(url, data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.data);
        return response.data;
      } else {
        print('Erreur de statut: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      print('Erreur lors de la connexion au serveur: $error');
      return null;
    }
  }

  Future<dynamic> getData(String url) async {
    Response response;
    url = formater(url);
    try {
      response = await dio.get(url);
      if (response.statusCode == 200) {
        print(response.data);
        return response.data;
      } else {
        print('Erreur de statut: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      print('Erreur lors de la connexion au serveur: $error');
      return null;
    }
  }
}
