import 'package:flutter/material.dart';

class ProductCardData extends StatelessWidget {
  final String image;
  final String name;

  const ProductCardData({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.cover, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}
