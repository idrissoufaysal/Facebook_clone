import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String username;
  // ignore: non_constant_identifier_names
  final String user_img;
  final String post_desc;
  final Image? post_img;
    UserPost({super.key, required this.username, required this.user_img, required this.post_desc, this.post_img});

@override
  Widget build(BuildContext context) {
    final h= MediaQuery.of(context).size.height;
    final w= MediaQuery.of(context).size.height;

    return Container(
      height: h*0.8,
      width: w*0,
     decoration:const BoxDecoration(

     ),
      
    );
  }
}