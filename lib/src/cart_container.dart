import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'cart.dart';

class CartCountainer extends StatelessWidget {
  // Logger().w('🚢 [Received state]');
  final int counter;
  const CartCountainer({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    Logger().w('🚢 [CartCountainer] build - Sending State]');
    return Cart(counter: counter);
  }
}
