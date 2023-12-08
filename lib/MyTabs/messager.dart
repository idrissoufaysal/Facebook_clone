import 'package:facebook_b13/components/conversation.dart';
import 'package:facebook_b13/components/likeIcons.dart';
import 'package:facebook_b13/components/onlineUser.dart';
import 'package:flutter/material.dart';
import '../models/messagerie.dart';

class Messager extends StatefulWidget {
  const Messager({
    super.key,
  });

  @override
  State<Messager> createState() => _MessagerState();
}

class _MessagerState extends State<Messager> {
  final List<Messagerie> messages = [
    Messagerie(
        username: 'John',
        lastMessage: 'Hello',
        userProfile: 'assets/man1.jpg',
        online: true),
    Messagerie(
        username: 'Jane',
        lastMessage: 'Hi there',
        userProfile: 'assets/femme2.jpg'),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/femme.jpg',
        online: true),
    Messagerie(
        username: 'John',
        lastMessage: 'Hello',
        userProfile: 'assets/man2.jpg',
        online: false),
    Messagerie(
        username: 'Jane',
        lastMessage: 'Hi there',
        userProfile: 'assets/femme3.jpg'),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/img2.jpg',
        online: false),
    Messagerie(
        username: 'John',
        lastMessage: 'Hello',
        userProfile: 'assets/man4.jpg',
        online: true),
    Messagerie(
        username: 'Jane',
        lastMessage: 'Hi there',
        userProfile: 'assets/man3.jpg'),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/femme1.jpg',
        online: false),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/img2.jpg',
        online: false),
    Messagerie(
        username: 'John',
        lastMessage: 'Hello',
        userProfile: 'assets/man4.jpg',
        online: true),
    Messagerie(
        username: 'Jane',
        lastMessage: 'Hi there',
        userProfile: 'assets/man3.jpg'),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/femme1.jpg',
        online: false),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/img2.jpg',
        online: false),
    Messagerie(
        username: 'John',
        lastMessage: 'Hello',
        userProfile: 'assets/man4.jpg',
        online: true),
    Messagerie(
        username: 'Jane',
        lastMessage: 'Hi there',
        userProfile: 'assets/man3.jpg'),
    Messagerie(
        username: 'Bob',
        lastMessage: 'Hey',
        userProfile: 'assets/femme1.jpg',
        online: false),
    // ... Ajoutez d'autres éléments au besoin
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //L'en tete .....................
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Messages',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmallIcons(
                    icon: const Icon(Icons.settings),
                    radius: BorderRadius.circular(30),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SmallIcons(
                    icon: const Icon(Icons.search),
                    radius: BorderRadius.circular(30),
                  ),
                ],
              )
            ],
          ),
        ),
    
        //Liste des utilisateur en ligne
        SizedBox(
          height: 80,
          child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: ((context, index) {
               // final onlineUsers = messages.where((sms) => sms.online==true);
                  Messagerie sms=messages[index];
                 // Messagerie mess=messages[index];
                return Row(
                  children: [
                    onlineUser(sms),
                 const   SizedBox(width: 4,)
               
                  ],
                );
              }
              ),
             scrollDirection: Axis.horizontal, ),
        ),
        const SizedBox(
          height: 6,
        ),
    
        //Profile des utilisateurs avec qui vous avez des conversations
        Expanded(
          child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: ((context, index) {
                Messagerie sms = messages[index];
                return Conversation(userMessage: sms);
              })),
        )
      ],
    );
  }
}
