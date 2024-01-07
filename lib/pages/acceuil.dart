import 'package:facebook_b13/MyTabs/home.dart';
import 'package:facebook_b13/MyTabs/live.dart';
import 'package:facebook_b13/MyTabs/messager.dart';
import 'package:facebook_b13/MyTabs/notification.dart';
import 'package:facebook_b13/MyTabs/people.dart';
import 'package:facebook_b13/MyTabs/video.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/colors.dart';
import '../components/likeIcons.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                'facebook',
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: blue,
                  fontWeight: FontWeight.bold
                ),
              ),
              actions: [

                 InkWell(
                   child: SmallIcons(
                      icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
                      radius: BorderRadius.circular(30),
                    ),
                 ),
          const    SizedBox(width: 5,),
                InkWell(
                   child: SmallIcons(
                      icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                      radius: BorderRadius.circular(30),
                    ),
                 ),
              ],
              bottom: TabBar(
                tabs: const [
                  Tab(icon:FaIcon(FontAwesomeIcons.house)),
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: FaIcon(FontAwesomeIcons.facebookMessenger)),
                  Tab(icon: FaIcon(FontAwesomeIcons.youtube)),
                  Tab(icon: FaIcon(FontAwesomeIcons.bell)),

                ],
                indicatorColor: blue,
                labelColor: blue,
              ),
            ),
            body: const TabBarView(
              children: [Home(), Peole(), Messager(),Video(),Notifications(),],
            )));
  }
}
