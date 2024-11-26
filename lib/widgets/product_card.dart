import 'package:flutter/material.dart';
import 'package:flutter_clothing_app/models/product_model.dart';
import 'package:flutter_clothing_app/widgets/product_card_data.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  const ProductCard({ super.key,
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Product(id: id, name: name, description: description, price: price, img: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black87.withOpacity(0.2), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ProductCardData(image: image, name: name),
        ),
      ),
    );
  }
}
