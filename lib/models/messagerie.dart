
import 'package:flutter/material.dart';

class Messagerie {
  final String username;
  final String userProfile;
  final String lastMessage;
  final bool online;

  Messagerie({required this.username,required this.lastMessage,this.online=false,required this.userProfile });

  Messagerie where(dynamic sms) {
    return sms.where((smse) => smse.online==true);
  }
  
}