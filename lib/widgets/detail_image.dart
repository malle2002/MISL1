import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      width: 400,
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Image.network(
          image,
          fit: BoxFit.fill,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}