// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/cart.dart';

class ProductScreen extends ConsumerStatefulWidget {
  static const routeName = 'product-screen';
  const ProductScreen({super.key});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    Logger().wtf('[ProductScreen] build]');

    final listData = ['1', '2', '3', '333', '444', '555', '666', '777'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Cart(
              counter: count,
            ),
          )
        ],
      ),
      persistentFooterButtons: [
        Center(
          child: FilledButton(
            onPressed: () {
              // setState(() {
              //   count++;
              // });
              ref.read(countCartProvider.notifier).state++;
            },
            child: Text('Add to Cart'),
          ),
        ),
      ],
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
