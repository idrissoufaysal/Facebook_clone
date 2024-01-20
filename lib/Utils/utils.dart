import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'dart:io';

Future<File?> pickImage() async{
  File? image;
  final picker = ImagePicker(
  
  );
}

String? validatPassword(String? password){
if(password==null){
  return "Entrer un mot de pass";
} if(password.length<4){
   return "Le mot doit avoir au moin 4 caractere";
}
}

String? validateName (String? name){
if(name==null){
  return "Entrer le nom";
}

String ? validateEmail(String? email){
  if(email==null){
    return "Entrer l'email";
  }
}

}

class Alert {
  void showSnackBar(BuildContext context, String message,Color couleur) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  scaffoldMessenger.showSnackBar(
    SnackBar(
      backgroundColor: couleur,
      content: Text(message),
      duration: Duration(seconds: 2),
       // Durée pendant laquelle la SnackBar est affichée
    ),
  );
}
  
}

