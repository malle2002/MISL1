import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final double price;
  final String description;

  const DetailData({ super.key, required this.description, required this.price });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 64.0),
        width: MediaQuery.of(context).size.width / 2,
        constraints: BoxConstraints(
          minHeight: 500,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(width: 2, color: Colors.grey)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(71),
            topRight: Radius.circular(71),
            bottomLeft: Radius.circular(71),
            bottomRight: Radius.circular(71)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                description,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
