import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Textfield extends StatelessWidget {
  final TextEditingController textController;
  final String? hintText;
  final FaIcon? icon;
  final  String? Function(String?)? validate;
  final TextInputType? keyType;
  
  const Textfield({super.key, required this.textController,this.icon,this.hintText, required this.validate, this.keyType});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:const EdgeInsets.all(10),
        decoration:const BoxDecoration(
         ),
         alignment: Alignment.bottomCenter,
    
        child: TextFormField(
            validator: validate,
           controller: textController, 
           keyboardType: keyType,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20)),
            prefixIcon: icon,
            
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500]
            ),
            fillColor: Colors.blue,
            focusColor: Colors.grey,
            
  
          )
          
          
          
        ),
      ),
    );
  }
}