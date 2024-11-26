import 'package:flutter/material.dart';
import 'package:flutter_clothing_app/models/product_model.dart';

import '../widgets/detail_back_button.dart';
import '../widgets/detail_data.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,  // Center the row's children horizontally
              children: [
                Column(
                  children: [
                    DetailImage(image: arguments.img),
                    DetailTitle(id: arguments.id, name: arguments.name),
                  ],
                ),
                SizedBox(width: 20),  // Optional: space between the columns
                Column(
                  children: [
                    DetailData(description: arguments.description, price: arguments.price),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
