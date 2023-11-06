import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'F a c e b o o k',
          style: TextStyle(color: Colors.blue[900], fontSize: 25),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.search)),
          IconButton(onPressed: () {}, icon:const FaIcon(FontAwesomeIcons.message))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          child: Column(
            children: [
              Container(
                margin:const EdgeInsets.symmetric(horizontal:05,vertical:10),
                padding: const EdgeInsets.all(04),
                height: 70,
                decoration: BoxDecoration(color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.purple[900],
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.blueAccent[100],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 15),
                          hintText: "Qu'en pensez vous !!",
                          hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontStyle: FontStyle.italic),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
