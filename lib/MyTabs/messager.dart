import 'package:flutter/material.dart';

class Messager extends StatefulWidget {
  const Messager({super.key});

  @override
  State<Messager> createState() => _MessagerState();
}

class _MessagerState extends State<Messager> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        Text('message')
      ],
    );;
  }
}