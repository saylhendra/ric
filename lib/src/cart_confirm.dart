import 'package:flutter/material.dart';

import 'cart.dart';

class CartConfirm extends StatelessWidget {
  final int counter;
  const CartConfirm({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Confirm'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Cart(
              counter: 0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello Riverpod Intensive Class!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
