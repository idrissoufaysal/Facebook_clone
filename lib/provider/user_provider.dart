import 'package:facebook_b13/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user=User(
    token: '', 
    id: '', 
    nom: '', 
    prenom: '', 
    email: '', 
    password: '');

    User get user =>_user;

    void setUser(String user){
      _user=User.fromJson(user);
      notifyListeners();
    }

    void setUserFromModel(User user){
      _user=user;
      notifyListeners();
    }
}