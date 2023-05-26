import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/src/provider_generator.dart';

final countCartProvider = StateProvider((ref) => 0);

class Cart extends ConsumerWidget {
  // Logger().w('🚢 [Received state]');
  // final int counter;
  const Cart({
    super.key,
    // required this.counter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listCounterState = ref.watch(listCartProvider);
    Logger().wtf('🟢 [Cart] build] Display State');

    return Stack(
      children: [
        Badge(
          label: Text(listCounterState.length.toString()),
          textColor: Colors.white,
          backgroundColor: Colors.red,
          child: const Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}
