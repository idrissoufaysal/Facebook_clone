import 'package:facebook_b13/models/messagerie.dart';
import 'package:flutter/material.dart';

import '../Utils/colors.dart';

Widget onlineUser(Messagerie userMessage){
    return Container(
      child: Column(
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
                          ))
                      : const Center()
                ],
              ),
              Text(userMessage.username)
            ],
          ),
    );
  }