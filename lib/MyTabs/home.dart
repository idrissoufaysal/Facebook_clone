import 'package:facebook_b13/Utils/colors.dart';
import 'package:facebook_b13/Utils/date.dart';
import 'package:facebook_b13/components/user_post.dart';
import 'package:facebook_b13/models/userStory.dart';
import 'package:flutter/material.dart';

import '../components/user_story.dart';
import '../models/user_post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Story> userStory = [
    Story(
      username: "Vanessa",
      storyImage: const AssetImage(
          "assets/femme1.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
    Story(
      username: "le chancelier",
      storyImage: const AssetImage(
          "assets/man1.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
    Story(
      username: "Nathalie",
      storyImage: const AssetImage(
          "assets/femme.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
    Story(
      username: "Alibaba",
      storyImage: const AssetImage(
          "assets/man4.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
    Story(
      username: "Frederique",
      storyImage: const AssetImage(
          "assets/femme3.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
    Story(
      username: "Pirate",
      storyImage: const AssetImage(
          "assets/man3.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 2,
    ),
  ];

  List<UsersPost> usersPosts = [
    UsersPost(
      username: "John Doe",
      date: DateTime(2023, 2, 2),
      content: "This is the content of the post.",
      userProfile: "assets/man2.jpg",
      postImg: "assets/img8.jpg",
    ),
    UsersPost(
      username: "Bob Dylane",
      date: DateTime(2022, 8, 2),
      content: "Another post content here.",
      userProfile: "assets/man1.jpg",
      postImg: "assets/img1.jpg",
    ),
    UsersPost(
      username: "Man",
      date: DateTime(2023, 8, 2),
      content: "je vous aime les gare",
      userProfile: "assets/femme1.jpg",
      postImg: "assets/img5.jpg",
    ),
    UsersPost(
      username: "Anita",
      date: DateTime(2022, 8, 2),
      content: "je vent la maison si ",
      userProfile: "assets/femme.jpg",
      postImg: "assets/img5.jpg",
    ),
    UsersPost(
      username: "Alex",
      date: DateTime(2023, 11, 2),
      content: "Another post content here.",
      userProfile: "assets/man3.jpg",
      postImg: "assets/img7.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/man4.jpg'),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(30)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "     what's in your mind",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            const Column(
              children: [Icon(Icons.photo_size_select_large), Text('photo')],
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Divider(
          color: Colors.grey[400],
          thickness: 5,
          height: 10,
        ),
        const SizedBox(
          height: 5,
        ),

        //user Stories
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: userStory.length,
            itemBuilder: (context, index) {
              Story story = userStory[index];
              return Row(
                children: [
                  const SizedBox(
                    width: 3,
                  ),
                  UserStory(
                      numberStory: story.numberStory,
                      storyImage: story.storyImage,
                      username: story.username),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(0),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Divider(
          color: Colors.grey[400],
          thickness: 5,
          height: 10,
        ),

        //User Posts
        SizedBox(
          height: 600,
          child: ListView.builder(
              itemCount: usersPosts.length,
              itemBuilder: (context, index) {
                UsersPost post = usersPosts[index];
                return UserPost(userPost: post);
              }
            ),
        ),
        //  const   SizedBox(height: 20,),
        //  ListView(
        //       children: usersPosts.map((UsersPost post) {
        //         return UserPost(userPost: post);
        //       }).toList(),
        //     ),
      ],
    );
  }
}
