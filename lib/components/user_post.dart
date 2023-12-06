import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../models/user_post.dart';

class UserPost extends StatelessWidget {
 final UsersPost userPost;
  const  UserPost({super.key, required this.userPost, });

@override
  Widget build(BuildContext context) {
    final h= MediaQuery.of(context).size.height;
   // final w= MediaQuery.of(context).size.height;

    return Container(
      height: h*0.45,
      width: double.infinity,
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
     ),
     child: Column(
      children: [
        Row(
           children: [
            const  CircleAvatar(
           backgroundImage: AssetImage('assets/man4.jpg'),
           ),
           Column(
            children: [
              Text(userPost.username),
              Text(userPost.date)
            ],
           )
           ],
        )
      ],
     ),
      
    );
  }
}