import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clothing_app/models/product_model.dart';

import '../widgets/products_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Product product1 = new Product(id: 1, name: 'T-Shirt', description: 'A comfortable cotton t-shirt.', price: 19.99, img: 'https://th.bing.com/th/id/R.5f4adc35144d22d10ad3aa2af7ee2533?rik=OasmTONOyJ%2fwGw&riu=http%3a%2f%2fdpegb9ebondhq.cloudfront.net%2fproduct_photos%2f589276%2f3600_00_hr_original.jpg&ehk=UjuQ73EinV%2fda8Uuq%2fWdRim7FAr%2fVt4aI3pVSh8Hv0k%3d&risl=1&pid=ImgRaw&r=0');
  Product product2 = new Product(id: 2, name: 'T-Jeans', description: 'Stylish and durable denim jeans.', price: 49.99, img: 'https://th.bing.com/th/id/OIP.n8O0s7gMLJDn66DTMVt0JgHaJ4?rs=1&pid=ImgDetMain');
  Product product3 = new Product(id: 3, name: 'Sneakers', description: 'Sporty sneakers for everyday wear.', price: 79.99, img: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6e9b71f2-617b-40f3-b437-69fcbc76d0ae/lebron-xx-ep-basketball-shoes-dpQwl8.png');

  late List<Product> products;

  @override
  void initState() {
    super.initState();
    products = [product1, product2, product3];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent[100],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("Products App", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ProductsGrid(products: products),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
