import 'package:facebook_b13/MyTabs/home.dart';
import 'package:facebook_b13/MyTabs/live.dart';
import 'package:facebook_b13/MyTabs/messager.dart';
import 'package:facebook_b13/MyTabs/notification.dart';
import 'package:facebook_b13/MyTabs/people.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Utils/colors.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                'FACEBOOK',
                style: TextStyle(color: blue, fontSize: 25),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.search)),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.message))
              ],
              bottom: TabBar(
                tabs: const [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: Icon(Icons.messenger_sharp)),
                  Tab(icon: Icon(Icons.notification_important)),
                  Tab(
                    icon: Icon(Icons.live_tv_rounded),
                  )
                ],
                indicatorColor: blue,
                labelColor:blue,
               
              ),
            ),
            body: const TabBarView(
              children: [
                Home(),
                Peole(),
                Messager(),
Live()              ],
            )
            )
            );
  }
}
