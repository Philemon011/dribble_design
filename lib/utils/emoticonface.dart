import 'package:flutter/material.dart';

class Emoticonface extends StatelessWidget {
  final String emoticonface;
  const Emoticonface({super.key, required this.emoticonface});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue[600]),
        child:  Center(
            child: Text(
          emoticonface,
          style: const TextStyle(fontSize: 28),
        )));
  }
}
