import 'package:facebook_b13/Utils/colors.dart';
import 'package:facebook_b13/Utils/date.dart';
import 'package:facebook_b13/components/user_post.dart';
import 'package:facebook_b13/models/userStory.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      numberStory: 5,
    ),
    Story(
      username: "Nathalie",
      storyImage: const AssetImage(
          "assets/femme.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 9,
    ),
    Story(
      username: "Alibaba",
      storyImage: const AssetImage(
          "assets/man4.jpg"), // Remplacez "assets/story2.jpg" par le chemin réel de votre image
      numberStory: 10,
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
      date: DateTime(2023, 1, 2),
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
      postImg: "assets/img1.jpg",
    ),
    UsersPost(
      username: "Anita",
      date: DateTime(2022, 8, 2),
      content: "je vent cette maison ",
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
          height: 10,
        ),
        Container(
          margin:const EdgeInsets.symmetric(horizontal:10),
          child: Row(
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
                    color: grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "     what's in your mind",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
               Column(
                children: [
                  FaIcon(FontAwesomeIcons.images,color: green,),
                 const Text('photo'),
                ],
              )
            ],
          ),
        ),

        //user Stories

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
          height: 600 + MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              itemCount: usersPosts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
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
                          padding: const EdgeInsets.all(02),
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Divider(
                        color: Colors.grey[400],
                        thickness: 5,
                        height: 10,
                      ),
                    ],
                  );
                }

                UsersPost post = usersPosts[index - 1];
                return UserPost(userPost: post);
              }),
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
