import 'package:flutter/material.dart';
import 'package:flutter_clothing_app/models/product_model.dart';
import 'package:flutter_clothing_app/widgets/product_card.dart';

class ProductsGrid extends StatefulWidget {
  final List<Product> products;
  const ProductsGrid({super.key, required this.products});
  @override
  _ProductsGridState createState() => _ProductsGridState();
}
class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final margin = width * 0.2;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: GridView.count(
        padding: const EdgeInsets.all(6),
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        semanticChildCount: 250,
        childAspectRatio: 200 / 244,
        physics: const BouncingScrollPhysics(),
        children: widget.products.map((product) => ProductCard(
          id: product.id,
          name: product.name,
          description: product.description,
          price: product.price,
          image: product.img,
        )).toList(),
      ),
    );
  }
}
