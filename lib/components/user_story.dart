import 'package:flutter/material.dart';

import '../Utils/colors.dart';

widget() {
  return Container();
}

class UserStory extends StatelessWidget {
  String username;
  ImageProvider storyImage;
  int numberStory;
  UserStory(
      {super.key,
      required this.numberStory,
      required this.storyImage,
      required this.username});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
        height: height * 0.4,
        width: width * 0.3,
        decoration: BoxDecoration(
            border: Border.all(color:grey),
            image: DecorationImage(image: storyImage, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            
            //Nombre de stories
            Positioned(
                right: 20,
                top: 15,
                child: Container(
                  height: 30,
                  width: 20,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(05)),
                  child: Center(
                    child: Text(
                      numberStory.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
                ),

         //username //nom de l'utilisateur       
            Positioned(
              bottom: 2,
              left: 9,
              child: Text(
                username,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                  ),
              ),
            )
          ],
        ));
  }
}
