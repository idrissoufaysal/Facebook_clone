import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../models/messagerie.dart';

class Conversation extends StatelessWidget {
  final Messagerie userMessage;

  const Conversation({super.key, required this.userMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(left: 5),
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  userMessage.userProfile,
                ),
                radius: 25,
              ),
              userMessage.online
                  ? Positioned(
                      bottom: 2,
                      right: 4,
                      child: CircleAvatar(
                        backgroundColor: green,
                        radius: 5,
                      ),
                    )
                  : const Center()
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                userMessage.username,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                userMessage.lastMessage,
                style: const TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
