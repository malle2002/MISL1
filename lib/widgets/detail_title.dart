import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;
  const DetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Chip(
        backgroundColor: Colors.white,
        label: Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
