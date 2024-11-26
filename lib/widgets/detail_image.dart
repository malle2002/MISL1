import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      width: 400,  // Set width to 200dp
      height: 400, // Set height to 200dp
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Image.network(
          image,
          fit: BoxFit.fill, // Use BoxFit.cover to fill the container while maintaining aspect ratio
          alignment: Alignment.center, // Align image to the center
        ),
      ),
    );
  }
}