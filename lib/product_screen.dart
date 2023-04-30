import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = 'product-screen';
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listData = ['1', '2', '3', '333', '444', '555', '666', '777'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
      ),
      body: GridView.builder(
          itemCount: listData.length,
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: RadialGradient(
                  colors: [
                    Colors.amber.shade700,
                    Colors.pink,
                  ],
                  center: Alignment.topLeft,
                  radius: 1.5,
                ),
              ),
              child: Center(
                child: Text(listData[index]),
              ),
            );
          }),
    );
  }
}
