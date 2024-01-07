import 'package:facebook_b13/Utils/date.dart';
import 'package:facebook_b13/components/likeIcons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Utils/colors.dart';
import '../models/user_post.dart';

class UserPost extends StatelessWidget {
  final UsersPost userPost;
  const UserPost({
    super.key,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    // final w= MediaQuery.of(context).size.height;

    return Container(
      height: h * 0.5,
      width: double.infinity,
      margin: const EdgeInsetsDirectional.only(start: 5, top: 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(05)),
      child: Column(
        children: [
          //user information
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userPost.userProfile),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userPost.username,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateTimeHelper.getRelativeTime(userPost.date),
                          style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.place)),
              ],
            ),
          ),

          const SizedBox(height: 3),
          //Contenu de la publication
          Align(
            alignment: Alignment.topLeft,
             child: Text(userPost.content,style:const TextStyle(fontSize: 17),)),

          //Post image
          Container(
            margin: const EdgeInsets.all(05),
            height: h * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(userPost.postImg), fit: BoxFit.cover)),
          ),

//Icon le like, comment, partage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallIcons(
                icon: const FaIcon(FontAwesomeIcons.thumbsUp),
                number: 5,
                radius: BorderRadius.circular(30),
              ),
              SmallIcons(
                  icon: const FaIcon(FontAwesomeIcons.comment),
                  number: 9,
                  radius: BorderRadius.circular(30)),
              SmallIcons(
                  icon: const FaIcon(FontAwesomeIcons.share),
                  number: 0,
                  radius: BorderRadius.circular(30)),
            ],
          ),
          const SizedBox(
            height: 05,
          ),
          Divider(
            color: Colors.grey[400],
            thickness: 5,
            height: 10,
          ),
        ],
      ),
    );
  }
}
