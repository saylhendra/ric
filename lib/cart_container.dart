import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/cart.dart';

class CartCountainer extends StatelessWidget {
  final int counter;
  const CartCountainer({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    Logger().w('🚢 [CartCountainer] build]');

    return Cart(counter: counter);
  }
}
