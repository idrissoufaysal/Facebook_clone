import 'package:flutter/material.dart';

class Peole extends StatefulWidget {
  const Peole({super.key});

  @override
  State<Peole> createState() => _PeoleState();
}

class _PeoleState extends State<Peole> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My people')
      ],
    );;
  }
}