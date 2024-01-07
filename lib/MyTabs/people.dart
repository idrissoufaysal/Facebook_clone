import 'package:facebook_b13/components/friend_demand.dart';
import 'package:flutter/material.dart';

import '../components/likeIcons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Peole extends StatefulWidget {
  const Peole({super.key});

  @override
  State<Peole> createState() => _PeoleState();
}

class _PeoleState extends State<Peole> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin:const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text(
                  'Amis',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SmallIcons(
                      icon:const  FaIcon(FontAwesomeIcons.magnifyingGlass),
                      radius: BorderRadius.circular(30),
                    ),
              ],
            ),
          ),
        const  SizedBox(
height: 15,
          ),
          Friends(),
          Friends(),
          Friends(),
          Friends(),
          Friends(),
          Friends(),
          Friends(),
          Friends(),

        ],
      ),
    );
  }
}
