
import 'package:flutter/material.dart';

class HeroPlace extends StatelessWidget {
  const HeroPlace({super.key,required this.photo, required this.name});

  final String photo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(photo),
          Text(name)
        ],
      ),
    );
  }
}