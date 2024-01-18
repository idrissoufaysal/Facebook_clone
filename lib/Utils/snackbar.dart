import 'dart:ffi';

import'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void showSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ));
}

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required Function onSuccess
}) async{
switch (response.statusCode) {
  case 200:
  onSuccess;
    
    break;

    case 400:
    showSnackBar(context, jsonDecode(response.body)['message']);
    break;

    case 500:
    showSnackBar(context, jsonDecode(response.body)['message']);
    break;
  default:
  showSnackBar(context,response.body);
}
}
