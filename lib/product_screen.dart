import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = 'product-screen';
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
      ),
      body: Column(children: []),
    );
  }
}
