import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final TextEditingController textController;
  final String? hintText;
  final Icon? icon;
  final  String? Function(String?)? validate;
  
  const Textfield({super.key, required this.textController,this.icon,this.hintText, required this.validate});

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
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20)),
            prefixIcon: icon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400]
            ),
            fillColor: Colors.blue,
            focusColor: Colors.grey,
  
          )
          
          
          
        ),
      ),
    );
  }
}