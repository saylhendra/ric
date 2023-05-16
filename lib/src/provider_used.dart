import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cityProvider = Provider((ref) => 'Jakarta Selatan');

class ProviderUsed extends ConsumerWidget {
  const ProviderUsed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityState = ref.watch(cityProvider);

    return Scaffold(
      appBar: AppBar(title: Text(cityState)),
      body: Center(
        child: SizedBox(
          child: Text('My Body App $cityState'),
        ),
      ),
    );
  }
}
