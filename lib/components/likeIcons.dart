import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class SmallIcons extends StatelessWidget {
  final Icon icon;
  final int? number;
  final BorderRadius? radius;
  const SmallIcons({super.key, required this.icon, this.number, this.radius});

  @override
  Widget build(BuildContext context) {
    return number!=null?( Container( 
      margin:const EdgeInsets.only(left:10,right: 10),
       height: 40,
       width: 90,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: radius
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){},
        icon: icon,),

        Text(number.toString())
        ],
      ),
    )):
Container(
  padding:const  EdgeInsets.all(0),
  decoration: BoxDecoration(
    color: grey,
    borderRadius: BorderRadius.circular(50)
  ),
  child:  IconButton(onPressed: (){},
        icon: icon,),
);
  }
}